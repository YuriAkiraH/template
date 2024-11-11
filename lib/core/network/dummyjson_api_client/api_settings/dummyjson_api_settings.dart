import 'package:template/core/network/api_settings.dart';

class DummyjsonApiSettings extends ApiSettings {
  static String token = '';

  //TODO: Get baseUnencodedPath and authority from Environment
  DummyjsonApiSettings()
      : super(
          baseUnencodedPath: '', //Environment.baseUnencodedPath,
          authority: 'https://dummyjson.com', //Environment.authority,
        );

  @override
  Map<String, String> get headers {
    return {
      'Content-type': 'application/json; charset=UTF-8',
    };
  }
}
