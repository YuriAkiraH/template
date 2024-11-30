import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _rotationAnimationController;

  @override
  void initState() {
    super.initState();
    _rotationAnimationController = AnimationController(vsync: this);
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
              title: Text('Socket exception'),
              leading: Icon(
                Icons.signal_wifi_connected_no_internet_4_rounded,
              ),
              onTap: () {
                widget.controller.throwSocketException();
              },
            ),
            ListTile(
              title: Text('Unexpected exception'),
              leading: Icon(
                Icons.warning_rounded,
              ),
              onTap: () {
                widget.controller.throwUnexpectedException();
              },
            ),
            ListTile(
              title: Text('Show loading'),
              leading: Icon(
                Icons.timelapse_rounded,
              ),
              onTap: () {
                widget.controller.showLoading();
              },
            ),
            ListTile(
              title: Text('Todos'),
              trailing: Icon(Icons.arrow_forward_outlined),
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
