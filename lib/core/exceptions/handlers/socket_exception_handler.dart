import 'dart:io';

import 'package:flutter/material.dart';
import 'package:template/core/exceptions/exception_handler.dart';
import 'package:template/features/common/widgets/no_internet_connection_alert.dart';
import 'package:template/main_app.dart';

class SocketExceptionHandler extends ExceptionHandler<SocketException> {
  @override
  void handle(SocketException ex) {
    NoInternetConnectionAlert().showModal(MainApp.context);
  }
}

class NoInternetConnectionBottomModal {
  static final NoInternetConnectionBottomModal _instance =
      NoInternetConnectionBottomModal._internal();

  factory NoInternetConnectionBottomModal() {
    return _instance;
  }

  NoInternetConnectionBottomModal._internal();

  static bool isRunning = false;

  void showModal(context) async {
    try {
      if (!isRunning) {
        isRunning = true;
        await showModalBottomSheet(
            useSafeArea: true,
            shape: Border.fromBorderSide(BorderSide.none),
            context: context,
            builder: (BuildContext bc) {
              return Container(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
                height: 100,
                color: Colors.redAccent,
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Text(
                          'No internet. Please connect to wi fi or cellular network.',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Dismiss',
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
        isRunning = false;
      }
    } catch (e) {
      isRunning = false;
    }
  }
}
