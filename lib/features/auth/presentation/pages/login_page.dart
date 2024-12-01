import 'package:flutter/material.dart';
import 'package:template/features/auth/presentation/controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  static const String route = 'Login';
  const LoginPage({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Login'),
      ),
    );
  }
}
