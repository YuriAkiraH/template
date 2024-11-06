import 'package:flutter/material.dart';
import 'package:template/features/home/presentation/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  static String get route => 'Home';

  const HomePage({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              // controller.counter++;
            },
            child: Text('Test'),
          ),
        ],
      ),
    );
  }
}
