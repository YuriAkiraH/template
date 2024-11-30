import 'package:async/async.dart';
import 'package:template/core/extensions/typedef/json_factory.dart';

abstract class ApiClient {
  Future<Result<T>> get<T>(
    String endPoint,
    JsonFactory<T> jsonResultFactory, [
    Map<String, dynamic>? queryParameters,
  ]);
  Future<Result<T>> post<T>(
    String endPoint,
    JsonFactory<T> jsonResultFactory,
    Object? body,
  );
  Future<Result<T>> put<T>(
    String endPoint,
    JsonFactory<T> jsonResultFactory, [
    Object? body,
  ]);
  Future<Result<T>> delete<T>(
    String endPoint,
    JsonFactory<T> jsonResultFactory, [
    Object? body,
  ]);
}
