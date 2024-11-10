import 'package:flutter/material.dart';
import 'package:template/features/home/presentation/controller/home_controller.dart';
import 'package:template/main_app.dart';

class HomePage extends StatefulWidget {
  static String get route => 'Home';

  const HomePage({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      MainApp.mainContext = context;
    });
  }

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
              showDialog(
                context: MainApp.mainContext!,
                builder: (context) {
                  return Container(
                    color: Colors.amber,
                    child: Text('oeuoej2q3'),
                  );
                },
              );
            },
            child: Text('Test'),
          ),
        ],
      ),
    );
  }
}
