import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:template/core/extensions/mixins/controller_extensions.dart';
import 'package:template/features/auth/domain/errors/login_errors.dart';
import 'package:template/features/auth/domain/models/credentials.dart';
import 'package:template/features/auth/domain/usecases/login.dart';
part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store, ControllerExtensions {
  final Login loginUC;

  LoginControllerBase(this.loginUC);

  @readonly
  bool _didInit = false;

  final formKey = GlobalKey<FormState>();
  final usernameTEC = TextEditingController();
  final passwordTEC = TextEditingController();

  @action
  Future<void> login(String username, String password) async {
    trySafeAction(
      () async {
        if (formKey.currentState?.validate() ?? false) {
          final credentials =
              Credentials(username: username, password: password);
          final result = await loginUC(credentials);
          if (result.asError?.error == LoginErrors.INVALID_CREDENTIALS.error) {}

          if (result.isValue) {}
        }
      },
    );
  }

  String? usernameValidator(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Username field is required';
    }

    return null;
  }

  String? passwordValidator(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Password field is required';
    }

    return null;
  }
}
