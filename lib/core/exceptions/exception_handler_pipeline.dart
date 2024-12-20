import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:collection/collection.dart';
import 'package:template/core/exceptions/exception_handler.dart';

class ExceptionHandlerPipeline {
  final List<ExceptionHandler> handlers;
  final ExceptionHandler unexpectedHandler;

  ExceptionHandlerPipeline({
    required this.handlers,
    required this.unexpectedHandler,
  }) {
    FlutterError.onError = (FlutterErrorDetails details) {
      if (details.exception is Exception) {
        matchHandler(details.exception as Exception);
      }

      FlutterError.presentError(details);
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      if (error is Exception) {
        matchHandler(error);
      }

      return true;
    };
  }

  void matchHandler(Exception ex) {
    final handler = handlers.firstWhereOrNull((e) => e.isOfType(ex));
    if (handler != null) {
      handler.handle(ex);
    } else {
      unexpectedHandler.handle(ex);
    }
  }
}
