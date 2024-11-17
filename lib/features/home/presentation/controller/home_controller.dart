import 'package:mobx/mobx.dart';
import 'package:template/core/extensions/controller_extensions.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/features/auth/domain/models/credentials.dart';
import 'package:template/features/auth/domain/usecases/login.dart';
import 'package:template/features/todo/domain/usecases/get_todo.dart';
import 'package:template/features/todo/domain/usecases/list_todos.dart';

class HomeController with ControllerExtensions {
  @readonly
  bool didInit = false;

  @action
  Future<void> init() async {
    trySafeAction(() async {
      await _getFarmInfo();
    });
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
    // await trySafeAction(() async {
    final getTodo = sl<GetTodo>();
    final result = await getTodo(1);
    print('');
    // });
  }

  Future<void> listTodos() async {
    // await trySafeAction(() async {
    final listTodos = sl<ListTodos>();
    final result = await listTodos();
    print('');
    // });
  }
}
