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
      body: Form(
        key: widget.controller.formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome', style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 32),
              TextFormField(
                controller: widget.controller.usernameTEC,
                decoration: const InputDecoration(labelText: 'Username'),
                validator: (value) =>
                    widget.controller.usernameValidator(value),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: widget.controller.passwordTEC,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                validator: (value) =>
                    widget.controller.passwordValidator(value),
              ),
              const SizedBox(height: 64),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    widget.controller.login(
                      widget.controller.usernameTEC.text,
                      widget.controller.passwordTEC.text,
                    );
                  },
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
      ),
    );
  }
}
