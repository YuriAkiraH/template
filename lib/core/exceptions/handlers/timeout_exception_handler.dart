import 'dart:async';

import 'package:template/core/exceptions/exception_handler.dart';

class TimeoutExceptionHandler extends ExceptionHandler<TimeoutException> {
  @override
  void handle(TimeoutException ex) {
    print('TimeoutException ===> ${ex.message ?? ''}');
  }
}
