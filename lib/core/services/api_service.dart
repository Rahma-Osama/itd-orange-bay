import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

class ApiService{
  ApiService({baseOptions, queryParams}) {
    _queryParams = queryParams;
    _baseOptions = baseOptions;
  }

  static final Map<String, dynamic> headers = {
    'Accept': 'application/json',
  };
  static Map<String, dynamic> _queryParams = {};
  static BaseOptions _baseOptions = BaseOptions(
      baseUrl: "",
      headers: headers,
      responseType: ResponseType.json,
      contentType: 'application/json',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      queryParameters: _queryParams);
  final Dio dio = Dio(_baseOptions);
}

ApiService getApiServices(context) =>
    Provider.of<ApiService>(context, listen: false);
