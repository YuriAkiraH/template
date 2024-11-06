import 'dart:async';

import 'package:flutter/material.dart';

mixin ControllerExtensions {
  // final toolbox = sl<Toolbox>();
  BuildContext? context;
  FutureOr<void> trySafeAction(
    FutureOr<void> Function() action, {
    FutureOr<void> Function(Exception? ex, bool didRethrow)? deferredAction,
    bool withLoading = true,
  }) async {
    Exception? ex;
    try {
      // if (withLoading) {
      //   toolbox.showLoading();
      // }

      await action();
    } catch (e, stackTrace) {
      // DomainRegistry.firebaseService().recordError(e, stackTrace);
      // await toolbox.errorDialog(
      //     buildContext: buildContext!, failure: Failure());
      ex = e as Exception;
      rethrow;
    } finally {
      if (deferredAction != null) {
        await deferredAction(ex, ex != null);
      }
      // if (withLoading) {
      //   toolbox.hideLoading();
      // }
    }
  }
}
