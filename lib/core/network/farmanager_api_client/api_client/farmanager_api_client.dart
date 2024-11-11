import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:template/core/network/api_client.dart';
import 'package:template/core/network/farmanager_api_client/api_settings/farmanager_api_settings.dart';
import 'package:template/core/network/farmanager_api_client/interceptors/auth_interceptor.dart';
import 'package:template/core/network/farmanager_api_client/interceptors/expired_token_retry_interceptor.dart';

class FarmanagerApiClient implements ApiClient<Response> {
  late Dio _dio;

  FarmanagerApiClient(
    FarmanagerApiSettings _apiSettings,
    // RefreshToken _refreshToken,
  ) {
    _dio = Dio(
      BaseOptions(
        baseUrl: _apiSettings.baseUrl,
        headers: _apiSettings.headers,
      ),
    );

    _dio.interceptors.addAll([
      AuthInterceptor(),
      // ExpiredTokenRetryInterceptor(_dio, _refreshToken).interceptor, //TODO: Add ExpiredTokenRetryInterceptor after implemented
    ]);
  }

  @override
  Future<Response> get(String endPoint,
      [Map<String, dynamic>? queryParameters]) async {
    return await _dio.get(
      endPoint,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<Response> post(String endPoint, Object? body) async {
    return await _dio.post(
      endPoint,
      data: _createBody(body),
    );
  }

  @override
  Future<Response> put(String endPoint, [Object? body]) async {
    return await _dio.put(
      endPoint,
      data: _createBody(body),
    );
  }

  @override
  Future<Response> delete(String endPoint, [Object? body]) async {
    return await _dio.delete(
      endPoint,
      data: _createBody(body),
    );
  }

  Object? _createBody(Object? body) {
    return body != null ? utf8.encode(jsonEncode(body)) : body;
  }

  // Future<dynamic> _validateResponse(Response response) async {
  //   return response;
  // }
}
