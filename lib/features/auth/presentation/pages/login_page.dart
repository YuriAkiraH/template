import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:template/core/themes/app_theme.dart';
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
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            const SizedBox(height: 64),
            Text(
              'Welcome',
              style: AppTheme.text.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 64),
            TextFormField(
              controller: widget.controller.usernameTEC,
              decoration: const InputDecoration(labelText: 'Username'),
              validator: (value) => widget.controller.usernameValidator(value),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: widget.controller.passwordTEC,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              validator: (value) => widget.controller.passwordValidator(value),
            ),
            const SizedBox(height: 64),
            Observer(
              builder: (_) => Visibility(
                // visible: widget.controller.errorMessage.isNotEmpty,
                visible: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.controller.errorMessage.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        widget.controller.errorMessage[index],
                        style: AppTheme.text.bodyMedium?.copyWith(
                          color: AppTheme.color.error,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.close_rounded,
                          color: AppTheme.color.error,
                        ),
                        onPressed: () {
                          widget.controller.errorMessage.removeAt(index);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
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
    );
  }
}
