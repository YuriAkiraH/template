class ApiSettings {
  final String baseUnencodedPath;
  final String authority;

  ApiSettings({
    required this.baseUnencodedPath,
    required this.authority,
  });

  String get baseUrl => authority + baseUnencodedPath;
  Map<String, String> get headers => {};
}
