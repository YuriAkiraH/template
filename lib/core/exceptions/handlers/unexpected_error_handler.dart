import 'package:template/core/exceptions/exception_handler.dart';
import 'package:template/features/common/widgets/unexpected_error_dialog.dart';

class UnexpectedErrorHandler extends ExceptionHandler<Exception> {
  final dialog = UnexpectedErrorDialog();

  @override
  void handle(Exception ex) {
    dialog.show();
  }
}
