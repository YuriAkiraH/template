import 'dart:io';

import 'package:template/core/exceptions/exception_handler.dart';

class SocketExceptionHandler extends ExceptionHandler<SocketException> {
  @override
  void handle(SocketException ex) {
    print('error handled at SocketExceptionHandler ===> ');
  }
}
