import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:template/core/extensions/mixins/controller_extensions.dart';
import 'package:template/features/todo/domain/usecases/list_todos.dart';
import 'package:template/features/todo/presentation/view_model/todos_view_model.dart';
part 'todos_controller.g.dart';

class TodosController = _TodosControllerBase with _$TodosController;

abstract class _TodosControllerBase with Store, ControllerExtensions {
  final ListTodos _listTodosUC;

  _TodosControllerBase(this._listTodosUC);

  @readonly
  bool _didInit = false;

  @readonly
  TodosViewModel? _todos;

  @action
  Future<void> init() async {
    await trySafeAction(
      () async {
        _didInit = false;
        await _listTodos();
      },
      withLoading: false,
      deferredAction: (ex, didRethrow) {
        if (didRethrow) {
          Navigator.pop(buildContext!);
        } else {
          _didInit = true;
        }
      },
    );
  }

  Future<void> _listTodos() async {
    final result = await _listTodosUC();
    if (result.isValue) {
      _todos = result.asValue!.value;
    }
  }
}
