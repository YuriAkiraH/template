import 'package:async/async.dart';
import 'package:template/features/todo/data/datasource/todo_datasource.dart';
import 'package:template/features/todo/domain/models/todo.dart';

class GetTodo {
  final TodoDatasource todoDatasource;

  GetTodo(this.todoDatasource);

  Future<Result<Todo>> call(int todoId) async {
    final result = await todoDatasource.getTodo(todoId);
    return Result.value(result);
  }
}
