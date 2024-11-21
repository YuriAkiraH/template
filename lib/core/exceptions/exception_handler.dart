abstract class ExceptionHandler<T extends Exception> {
  bool isOfType(Exception ex) => ex is T;
  void handle(T ex);
}
