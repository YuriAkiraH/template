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
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome', style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 32),
            TextFormField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            const SizedBox(height: 64),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                child: Text('Login'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text('Register'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text('Forgot password?'),
              ),
            ),
            const SizedBox(height: 258),
          ],
        ),
      ),
    );
  }
}
