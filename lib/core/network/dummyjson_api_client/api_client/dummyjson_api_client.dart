import 'dart:convert';

import 'package:async/async.dart';
import 'package:dio/dio.dart';
import 'package:template/core/extensions/typedef/json_factory.dart';
import 'package:template/core/network/api_client.dart';
import 'package:template/core/network/dummyjson_api_client/api_errors/dummyjson_api_errors.dart';
import 'package:template/core/network/dummyjson_api_client/api_settings/dummyjson_api_settings.dart';
import 'package:template/core/network/dummyjson_api_client/interceptors/auth_interceptor.dart';
import 'package:template/core/network/dummyjson_api_client/models/dummyjson_error.dart';

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

  @override
  Future<Result<T>> get<T>(
    String endPoint,
    JsonFactory<T> jsonResultFactory, [
    Map<String, dynamic>? queryParameters,
  ]) async {
    final response = await _dio.get(
      endPoint,
      queryParameters: queryParameters,
    );
    final error = _validateResponse(response);

    if (error != null) {
      return Result.error(error);
    }

    return Result.value(jsonResultFactory(response.data));
  }

  @override
  Future<Result<T>> post<T>(
    String endPoint,
    JsonFactory<T> jsonResultFactory,
    Object? body,
  ) async {
    final response = await _dio.post(
      endPoint,
      data: _createBody(body),
    );
    final error = _validateResponse(response);

    if (error != null) {
      return Result.error(error);
    }

    return Result.value(jsonResultFactory(response.data));
  }

  @override
  Future<Result<T>> put<T>(
    String endPoint,
    JsonFactory<T> jsonResultFactory, [
    Object? body,
  ]) async {
    final response = await _dio.put(
      endPoint,
      data: _createBody(body),
    );
    final error = _validateResponse(response);

    if (error != null) {
      return Result.error(error);
    }

    return Result.value(jsonResultFactory(response.data));
  }

  @override
  Future<Result<T>> delete<T>(
    String endPoint,
    JsonFactory<T> jsonResultFactory, [
    Object? body,
  ]) async {
    final response = await _dio.delete(
      endPoint,
      data: _createBody(body),
    );
    final error = _validateResponse(response);

    if (error != null) {
      return Result.error(error);
    }

    return Result.value(jsonResultFactory(response.data));
  }

  Object? _createBody(Object? body) {
    return body != null ? utf8.encode(jsonEncode(body)) : body;
  }

  ExpectedError? _validateResponse(Response response) {
    if (response.statusCode == null) {
      throw Exception('STATUS_CODE_NOT_FOUND');
    } else {
      if (response.statusCode == 404) {
        return CommonErrors.NOT_FOUND;
      } else if (response.statusCode == 400) {
        final error = DummyjsonError.fromJson(response.data);
        return ExpectedError(error.message, error.message);
      }
    }

    return null;
  }
}
