// ignore_for_file: non_constant_identifier_names

class ExpectedError {
  final String code;
  final String message;

  const ExpectedError(this.code, this.message);
}

class CommonErrors {
  static get NOT_FOUND => const ExpectedError('NOT_FOUND', 'Not found');
}
