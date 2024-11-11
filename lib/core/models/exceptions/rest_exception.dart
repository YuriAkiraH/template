class RestException implements Exception {
  final int _statusCode;
  final String? _reasonPhrase;
  final String _body;

  RestException(
    this._statusCode,
    this._reasonPhrase,
    this._body,
  );

  @override
  String toString() {
    return 'StatusCode: $_statusCode - ReasonPhrase: $_reasonPhrase - Body: $_body';
  }
}
