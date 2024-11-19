import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:template/main_app.dart';

mixin ControllerExtensions {
  // final toolbox = sl<Toolbox>();
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
    } catch (e, stackTrace) {
      // DomainRegistry.firebaseService().recordError(e, stackTrace);
      // await toolbox.errorDialog(
      //     buildContext: buildContext!, failure: Failure());
      // ex = e as Exception;
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
    if (MainApp.mainContext != null &&
        !MainApp.mainContext!.loaderOverlay.visible) {
      MainApp.mainContext?.loaderOverlay.show();
    }
  }

  void _hideLoading() {
    if (MainApp.mainContext != null &&
        MainApp.mainContext!.loaderOverlay.visible) {
      MainApp.mainContext?.loaderOverlay.hide();
    }
  }
}
