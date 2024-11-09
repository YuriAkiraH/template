import 'package:flutter/material.dart';
import 'package:template/features/home/presentation/pages/home_page.dart';

class MainApp extends StatefulWidget {
  static String route = 'MainApp';
  static BuildContext? mainContext;

  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      MainApp.mainContext = context;
      // Navigator.pushNamedAndRemoveUntil(
      //   context,
      //   HomePage.route,
      //   (_) => false,
      // );
      Navigator.pushNamed(context, HomePage.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
