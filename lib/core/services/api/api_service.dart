import 'package:dio/dio.dart';
import 'package:orange_bay_new/core/services/api/api_errors.dart';
import 'package:provider/provider.dart';

class ApiService {
  static final BaseOptions _baseOptions = BaseOptions(
    responseType: ResponseType.json,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 5),
  );
  final Dio _dio = Dio(_baseOptions);

  ApiService([String? baseUrl]) {
    if (baseUrl != null) {
      _dio.options.baseUrl = baseUrl;
    }
  }

  Future<dynamic> get({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    try {
      Response response = await _dio.get(endPoint);
      return response.data;
    } on DioException catch (error) {
      throw ServerError.handleNetworkErrorType(error);
    }
  }

  Future<dynamic> post({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    try {
      Response response = await _dio.post(
        endPoint,
        data: body,
        queryParameters: query,
      );
      return response.data;
    } on DioException catch (error) {
      throw ServerError.handleNetworkErrorType(error);
    }
  }

  Future<dynamic> put({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    try {
      Response response = await _dio.put(
        endPoint,
        data: body,
        queryParameters: query,
      );
      return response.data;
    } on DioException catch (error) {
      throw ServerError.handleNetworkErrorType(error);
    }
  }

  Future<dynamic> delete({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    try {
      Response response = await _dio.delete(
        endPoint,
        data: body,
        queryParameters: query,
      );
      return response.data;
    } on DioException catch (error) {
      throw ServerError.handleNetworkErrorType(error);
    }
  }
}

ApiService getApiServices(context) =>
    Provider.of<ApiService>(context, listen: false);
