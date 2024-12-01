// ignore_for_file: constant_identifier_names

import 'package:template/core/network/dummyjson_api_client/api_errors/dummyjson_api_expected_error.dart';

enum CommonErrors {
  NOT_FOUND(
    ExpectedError(
      'Not found',
      'Not found.',
    ),
  );

  final ExpectedError error;
  const CommonErrors(this.error);
}
