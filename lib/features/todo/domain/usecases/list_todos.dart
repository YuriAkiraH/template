import 'package:async/async.dart';
import 'package:template/core/network/dummyjson_api_client/models/pageable_list_request.dart';
import 'package:template/features/todo/data/datasource/todo_datasource.dart';
import 'package:template/features/todo/presentation/view_model/todo_view_model.dart';
import 'package:template/features/todo/presentation/view_model/todos_view_model.dart';

class ListTodos {
  final TodoDatasource todoDatasource;

  ListTodos(this.todoDatasource);

  Future<Result<TodosViewModel>> call([
    PageableListRequest pageableListRequest = const PageableListRequest(),
  ]) async {
    final result = await todoDatasource.listTodos(pageableListRequest);
    if (result.isValue) {
      List<TodoViewModel> todoViewModels = [];
      todoViewModels.addAll(
        result.asValue!.value.todos
            .map(
              (e) => TodoViewModel(
                id: e.id,
                todo: e.todo,
                completed: e.completed,
                userId: e.userId,
              ),
            )
            .toList(),
      );
      return Result.value(
        TodosViewModel(todos: todoViewModels),
      );
    } else {
      return Result.error(result.asError!.error);
    }
  }
}
