// ignore_for_file: constant_identifier_names

import 'package:template/core/network/dummyjson_api_client/api_errors/dummyjson_api_expected_error.dart';

enum LoginErrors {
  USER_NAME_AND_PASSWORD_REQUIRED(
    ExpectedError(
      'Username and password required',
      'Username and password required.',
    ),
  ),
  INVALID_CREDENTIALS(
    ExpectedError(
      'Invalid credentials',
      'Invalid credentials.',
    ),
  );

  final ExpectedError error;
  const LoginErrors(this.error);
}
