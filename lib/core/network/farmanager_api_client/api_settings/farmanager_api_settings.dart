import 'package:template/core/network/api_settings.dart';

class FarmanagerApiSettings extends ApiSettings {
  static String token = '';

  //TODO: Get baseUnencodedPath and authority from Environment
  FarmanagerApiSettings()
      : super(
          baseUnencodedPath: '', //Environment.baseUnencodedPath,
          authority: '', //Environment.authority,
        );

  @override
  Map<String, String> get headers {
    return {
      'Content-type': 'application/json; charset=UTF-8',
    };
  }
}
