// ignore_for_file: non_constant_identifier_names

class ExpectedError {
  final String code;
  final Exception ex;

  ExpectedError(this.code, this.ex);
}

class CommonErrors {
  static get NOT_FOUND => ExpectedError('NOT_FOUND', Exception());
}
