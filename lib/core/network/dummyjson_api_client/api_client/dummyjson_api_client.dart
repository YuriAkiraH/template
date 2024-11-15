import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:template/core/network/api_client.dart';
import 'package:template/core/network/dummyjson_api_client/api_settings/dummyjson_api_settings.dart';
import 'package:template/core/network/dummyjson_api_client/interceptors/auth_interceptor.dart';
import 'package:template/features/auth/domain/models/login_result.dart';

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
      ),
    );

    _dio.interceptors.addAll([
      AuthInterceptor(),
    ]);
  }

  @override
  Future get(String endPoint, [Map<String, dynamic>? queryParameters]) async {
    return _validateResponse(
      await _dio.get(
        endPoint,
        queryParameters: queryParameters,
      ),
    );
  }

  @override
  Future post(String endPoint, Object? body) async {
    return _validateResponse(
      await _dio.post<LoginResult>(
        endPoint,
        data: _createBody(body),
      ),
    );
  }

  @override
  Future put(String endPoint, [Object? body]) async {
    return _validateResponse(
      await _dio.put(
        endPoint,
        data: _createBody(body),
      ),
    );
  }

  @override
  Future delete(String endPoint, [Object? body]) async {
    return _validateResponse(
      await _dio.delete(
        endPoint,
        data: _createBody(body),
      ),
    );
  }

  Object? _createBody(Object? body) {
    // final test = body != null ? jsonEncode(body) : body;
    final test = body != null ? utf8.encode(jsonEncode(body)) : body;
    return test;
  }

  Object? _validateResponse(Response response) {
    if (!response.statusCode.toString().startsWith('2')) {
      // throw RestException(
      //   response.statusCode ?? 0,
      //   response.statusMessage,
      //   response.data,
      // );
      throw Exception(); //TODO: Throw the correct exception
    } else {
      return response.data;
    }
  }
}
