import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:template/core/extensions/mixins/controller_extensions.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/features/auth/domain/models/credentials.dart';
import 'package:template/features/auth/domain/usecases/login.dart';
import 'package:template/features/todo/domain/usecases/get_todo.dart';
import 'package:template/features/todo/domain/usecases/list_todos.dart';
import 'package:template/features/todo/presentation/pages/todos_page.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store, ControllerExtensions {
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
    await Future.delayed(Duration(seconds: 2));
  }

  Future<void> doSomething() async {
    await trySafeAction(() async {
      final login = sl<Login>();
      login(
        Credentials(username: 'emilys', password: 'emilyspass'),
      );
    });
  }

  Future<void> getTodo() async {
    // throw SocketException('test abc');
    // throw Exception('test abc');

    final getTodo = sl<GetTodo>();
    final result = await getTodo(1);
    print('');
  }

  Future<void> listTodos() async {
    await trySafeAction(() async {
      await Future.delayed(const Duration(seconds: 2));
      // final listTodos = sl<ListTodos>();
      // final result = await listTodos();
      // print('');
    });
  }

  void navigateToTodos() {
    Navigator.pushNamed(buildContext!, TodosPage.route);
  }
}
