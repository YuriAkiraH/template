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
      widget.controller.buildContext = context;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                widget.controller.doSomething();
              },
              child: Text('Test'),
            ),
            ElevatedButton(
              onPressed: () {
                widget.controller.getTodo();
              },
              child: Text('getTodo'),
            ),
            ElevatedButton(
              onPressed: () {
                widget.controller.listTodos();
              },
              child: Text('listTodos'),
            ),
            ElevatedButton(
              onPressed: () {
                widget.controller.navigateToTodos();
              },
              child: Text('navigate to todos'),
            ),
          ],
        ),
      ),
    );
  }
}
