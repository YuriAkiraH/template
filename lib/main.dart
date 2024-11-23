import 'package:flutter/material.dart';
import 'package:template/core/exceptions/exception_handler_pipeline.dart';
import 'package:template/core/exceptions/handlers/socket_exception_handler.dart';
import 'package:template/core/exceptions/handlers/unexpected_error_handler.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InjectionContainer().init();
  ExceptionHandlerPipeline(
    handlers: [
      SocketExceptionHandler(),
    ],
    unexpectedHandler: UnexpectedErrorHandler(),
  );
  runApp(const MainApp());
}
