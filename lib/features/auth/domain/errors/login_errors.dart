import 'package:template/core/network/dummyjson_api_client/api_errors/dummyjson_api_errors.dart';

class LoginErrors {
  static get USER_NAME_AND_PASSWORD_REQUIRED => ExpectedError(
        'USER_NAME_AND_PASSWORD_REQUIRED',
        Exception('Username and password is requried.'),
      );

  static get INVALID_CREDENTIALS => ExpectedError(
        'INVALID_CREDENTIALS',
        Exception('Invalid credentials.'),
      );
}
