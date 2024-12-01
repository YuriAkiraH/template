import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:template/core/extensions/mixins/controller_extensions.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/features/auth/domain/errors/login_errors.dart';
import 'package:template/features/auth/domain/models/credentials.dart';
import 'package:template/features/auth/domain/usecases/login.dart';
import 'package:template/features/auth/presentation/pages/login_page.dart';
import 'package:template/features/todo/presentation/pages/todos_page.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store, ControllerExtensions {
  @readonly
  bool _didInit = false;

  @action
  Future<void> init() async {
    trySafeAction(
      () async {
        _didInit = false;
        await _getFarmInfo();
      },
      withLoading: false,
      deferredAction: (ex, didRethrow) {
        _didInit = true;
      },
    );
  }

  Future<void> _getFarmInfo() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  void throwSocketException() {
    // final loginUseCase = sl<Login>();
    // loginUseCase(
    //   Credentials(username: 'a', password: 'b'),
    // ).then((result) {
    //   if (result.asError?.error == LoginErrors.INVALID_CREDENTIALS.error) {
    //     print('INVALID_CREDENTIALS');
    //   }
    // });

    throw const SocketException('test abc');
  }

  void throwUnexpectedException() {
    throw Exception('test abc');
  }

  Future<void> showLoading() async {
    await trySafeAction(() async {
      await Future.delayed(const Duration(seconds: 2));
    });
  }

  void navigateToTodos() {
    Navigator.pushNamed(buildContext!, TodosPage.route);
  }

  void navigateToLogin() {
    Navigator.pushNamed(buildContext!, LoginPage.route);
  }
}
