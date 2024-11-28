extension HttpStatusExtension on int {
  bool get isOK {
    return (this ~/ 100) == 2;
  }
}
