import 'dart:io';
import 'package:template/core/exceptions/exception_handler.dart';
import 'package:template/features/common/widgets/no_internet_connection_alert.dart';
import 'package:template/main_app.dart';

class SocketExceptionHandler extends ExceptionHandler<SocketException> {
  @override
  void handle(SocketException ex) {
    NoInternetConnectionAlert().showModal(MainApp.context);
  }
}
