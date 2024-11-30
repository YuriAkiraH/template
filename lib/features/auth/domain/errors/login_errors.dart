// ignore_for_file: constant_identifier_names

import 'package:template/core/network/dummyjson_api_client/api_errors/dummyjson_api_errors.dart';

enum LoginErrors {
  USER_NAME_AND_PASSWORD_REQUIRED(
    ExpectedError(
      'USER_NAME_AND_PASSWORD_REQUIRED',
      'Username and password is requried.',
    ),
  ),
  INVALID_CREDENTIALS(
    ExpectedError(
      'INVALID_CREDENTIALS',
      'Invalid credentials.',
    ),
  );

  final ExpectedError error;
  const LoginErrors(this.error);
}
