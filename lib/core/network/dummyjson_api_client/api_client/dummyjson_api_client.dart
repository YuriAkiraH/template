import 'dart:convert';

import 'package:async/async.dart';
import 'package:dio/dio.dart';
import 'package:template/core/network/api_client.dart';
import 'package:template/core/network/dummyjson_api_client/api_errors/dummyjson_api_errors.dart';
import 'package:template/core/network/dummyjson_api_client/api_settings/dummyjson_api_settings.dart';
import 'package:template/core/network/dummyjson_api_client/interceptors/auth_interceptor.dart';
import 'package:template/features/auth/domain/models/login_result.dart';
import 'package:template/features/todo/domain/models/todo.dart';

class DummyjsonApiClient implements ApiClient {
  late Dio _dio;
  final DummyjsonApiSettings _apiSettings;

  DummyjsonApiClient(
    this._apiSettings,
  ) {
    _dio = Dio(
      BaseOptions(
        baseUrl: _apiSettings.baseUrl,
        headers: _apiSettings.headers,
        validateStatus: (status) => true,
      ),
    );

    _dio.interceptors.addAll([
      AuthInterceptor(),
    ]);
  }

  Future<Result<T?>> getTest<T>(
    String endPoint,
    JsonFactory<T>? jsonFactory, [
    Map<String, dynamic>? queryParameters,
  ]) async {
    validate(
      () => _dio.get(
        endPoint,
        queryParameters: queryParameters,
      ),
    );
    final response = await _dio.get(
      endPoint,
      queryParameters: queryParameters,
    );
    _validateResponse(response);
    return Result.value(
      jsonFactory != null ? jsonFactory(response.data) : null,
    );
  }

  @override
  Future get(String endPoint, [Map<String, dynamic>? queryParameters]) async {
    final response = await _dio.get(
      endPoint,
      queryParameters: queryParameters,
    );
    _validateResponse(response);
    return response.data;
  }

  @override
  Future post(String endPoint, Object? body) async {
    final response = await _dio.post<LoginResult>(
      endPoint,
      data: _createBody(body),
    );
    _validateResponse(response);
    return response.data;
  }

  @override
  Future put(String endPoint, [Object? body]) async {
    final response = await _dio.put(
      endPoint,
      data: _createBody(body),
    );
    _validateResponse(response);
    return response.data;
  }

  @override
  Future delete(String endPoint, [Object? body]) async {
    final response = await _dio.delete(
      endPoint,
      data: _createBody(body),
    );
    _validateResponse(response);
    return response.data;
  }

  Object? _createBody(Object? body) {
    return body != null ? utf8.encode(jsonEncode(body)) : body;
  }

  void _validateResponse(Response response) {
    if (!response.statusCode.toString().startsWith('2')) {
      // throw RestException(
      //   response.statusCode ?? 0,
      //   response.statusMessage,
      //   response.data,
      // );
      throw Exception(); //TODO: Throw the correct exception
    }
  }

  Exception validate(Future<Response> Function() func) {
    return CommonErrors.errors['not_found']!;
    // final response = await func();
    // if (response.statusCode == null) {
    //   throw Exception('STATUS_CODE_NOT_FOUND');
    // } else {
    //   if (response.statusCode == 404) {
    //     throw Exception('NOT_FOUND');
    //   }
    // }
  }
}
