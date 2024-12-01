class ExpectedError {
  final String code;
  final String message;

  const ExpectedError(this.code, this.message);

  @override
  bool operator ==(Object other) =>
      other is ExpectedError &&
      other.runtimeType == runtimeType &&
      other.code == code;

  @override
  int get hashCode => code.hashCode;
}
