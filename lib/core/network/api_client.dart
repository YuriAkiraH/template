abstract class ApiClient<T> {
  Future<T> get(String endPoint, [Map<String, dynamic>? queryParameters]);
  Future<T> post(String endPoint, Object? body);
  Future<T> put(String endPoint, [Object? body]);
  Future<T> delete(String endPoint, [Object? body]);
}
