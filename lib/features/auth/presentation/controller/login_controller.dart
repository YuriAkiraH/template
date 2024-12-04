import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:template/core/extensions/mixins/controller_extensions.dart';
import 'package:template/core/network/dummyjson_api_client/api_errors/dummyjson_api_expected_error.dart';
import 'package:template/features/auth/domain/errors/login_errors.dart';
import 'package:template/features/auth/domain/models/credentials.dart';
import 'package:template/features/auth/domain/usecases/login.dart';
import 'package:template/main_app.dart';
part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store, ControllerExtensions {
  final Login loginUC;

  LoginControllerBase(this.loginUC);

  @readonly
  bool _didInit = false;

  @readonly
  ObservableList<String> _errorMessage = ObservableList();

  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
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
          if (result.asError?.error is ExpectedError) {
            final error = result.asError?.error as ExpectedError;
            if (error == LoginErrors.INVALID_CREDENTIALS.error) {
              _errorMessage.add(error.message);
              // _errorMessage = ObservableList.of(_errorMessage);
              return;
            }
          }

          if (result.isValue) {
            Navigator.pop(buildContext!);
          }
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
