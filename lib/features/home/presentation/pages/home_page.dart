import 'package:flutter/material.dart';
import 'package:template/features/home/presentation/controller/home_controller.dart';

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
            ListTile(
              title: const Text('Socket exception'),
              leading: const Icon(
                Icons.signal_wifi_connected_no_internet_4_rounded,
              ),
              onTap: () {
                widget.controller.throwSocketException();
              },
            ),
            ListTile(
              title: const Text('Unexpected exception'),
              leading: const Icon(
                Icons.warning_rounded,
              ),
              onTap: () {
                widget.controller.throwUnexpectedException();
              },
            ),
            ListTile(
              title: const Text('Show loading'),
              leading: const Icon(
                Icons.timelapse_rounded,
              ),
              onTap: () {
                widget.controller.showLoading();
              },
            ),
            ListTile(
              title: const Text('Todos'),
              trailing: const Icon(Icons.arrow_forward_outlined),
              onTap: () {
                widget.controller.navigateToTodos();
              },
            ),
          ],
        ),
      ),
    );
  }
}
