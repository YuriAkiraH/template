import 'package:flutter/material.dart';
import 'package:template/main_app.dart';

class NoInternetConnectionAlert {
  void showModal(context) async {
    MainApp.scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        content: const Text('No Internet Connection'),
        action: SnackBarAction(
          label: 'Dismiss',
          onPressed: () {
            MainApp.scaffoldKey.currentState?.hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
}
