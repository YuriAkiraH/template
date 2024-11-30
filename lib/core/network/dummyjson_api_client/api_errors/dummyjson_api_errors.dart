// abstract class ResultError {}

// typedef ExpectedError = MapEntry<String, Exception>;
class ExpectedError {
  final String code;
  final Exception ex;

  ExpectedError(this.code, this.ex);
}

class CommonErrors {
  // static final Map<String, Exception> errors = {
  //   'not_found': Exception(),
  // };

  static get NOT_FOUND => ExpectedError('NOT_FOUND', Exception());
}
