import 'package:flutter/material.dart';
import 'package:template/main_app.dart';

class UnexpectedErrorDialog {
  Future<void> show() async {
    await showDialog(
      context: MainApp.context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: const Text('An unexpected error ocurred.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
