import 'dart:io';
import 'package:dio/dio.dart';
import 'package:orange_bay_new/core/services/network_exception_handler.dart';

abstract class Failure {
  final DioExceptionType exceptionType;
  final int? statusCode;
  final NetworkExpMsgCodes expMsgCode;

  Failure({
    required this.exceptionType,
    required this.statusCode,
    required this.expMsgCode,
  });
}

class ServerError extends Failure {
  ServerError({
    required super.exceptionType,
    required super.statusCode,
    required super.expMsgCode,
  });

  factory ServerError.handleNetworkErrorType(DioException exception) {
    final expType = exception.type;
    if (expType == DioExceptionType.badResponse) {
      return ServerError.fromResponse(exception);
    }
    if (expType is NetworkTimeoutExceptions) {
      return ServerError.fromTimeout(exception);
    }
    if (exception.error is SocketException ||
        expType == DioExceptionType.connectionError) {
      return ServerError.fromNetwork(exception);
    }
    return ServerError.fromUnknown(exception);
  }

  factory ServerError.fromResponse(DioException exception) => ServerError(
        exceptionType: DioExceptionType.badResponse,
        statusCode: exception.response?.statusCode,
        expMsgCode: NetworkExpMsgCodes.badResponseExpCode,
      );

  factory ServerError.fromNetwork(DioException exception) => ServerError(
        exceptionType: DioExceptionType.connectionError,
        statusCode: exception.response?.statusCode,
        expMsgCode: NetworkExpMsgCodes.unKnowingExpCode,
      );

  factory ServerError.fromUnknown(DioException exception) => ServerError(
        exceptionType: DioExceptionType.unknown,
        statusCode: exception.response?.statusCode,
        expMsgCode: NetworkExpMsgCodes.unKnowingExpCode,
      );

  factory ServerError.fromTimeout(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.receiveTimeout:
        return ServerError(
          exceptionType: DioExceptionType.receiveTimeout,
          statusCode: exception.response?.statusCode,
          expMsgCode: NetworkExpMsgCodes.noInternetConnectionExpCode,
        );
      case DioExceptionType.sendTimeout:
        return ServerError(
          exceptionType: DioExceptionType.sendTimeout,
          statusCode: exception.response?.statusCode,
          expMsgCode: NetworkExpMsgCodes.noInternetConnectionExpCode,
        );
      case DioExceptionType.connectionTimeout:
        return ServerError(
          exceptionType: DioExceptionType.connectionTimeout,
          statusCode: exception.response?.statusCode,
          expMsgCode: NetworkExpMsgCodes.noInternetConnectionExpCode,
        );
      case DioExceptionType.cancel:
        return ServerError(
          exceptionType: DioExceptionType.cancel,
          statusCode: exception.response?.statusCode,
          expMsgCode: NetworkExpMsgCodes.noInternetConnectionExpCode,
        );
      default:
        return ServerError.fromUnknown(exception);
    }
  }
}
