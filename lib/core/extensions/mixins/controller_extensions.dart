import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:template/main_app.dart';

mixin ControllerExtensions {
  BuildContext? buildContext;
  FutureOr<void> trySafeAction(
    FutureOr<void> Function() action, {
    FutureOr<void> Function(Exception? ex, bool didRethrow)? deferredAction,
    bool withLoading = true,
  }) async {
    Exception? ex;
    try {
      if (withLoading) {
        _showLoading();
      }

      await action();
    } catch (e, _) {
      ex = e as Exception;
      rethrow;
    } finally {
      if (deferredAction != null) {
        await deferredAction(ex, ex != null);
      }
      if (withLoading) {
        _hideLoading();
      }
    }
  }

  void _showLoading() {
    if (!MainApp.context.loaderOverlay.visible) {
      MainApp.context.loaderOverlay.show();
    }
  }

  void _hideLoading() {
    if (MainApp.context.loaderOverlay.visible) {
      MainApp.context.loaderOverlay.hide();
    }
  }
}
