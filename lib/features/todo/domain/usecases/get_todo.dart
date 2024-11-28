import 'package:async/async.dart';
import 'package:template/features/todo/data/datasource/todo_datasource.dart';
import 'package:template/features/todo/domain/models/todo.dart';

class GetTodo {
  final TodoDatasource todoDatasource;

  GetTodo(this.todoDatasource);

  Future<Result<Todo>> call(int todoId) async {
    throw Exception();
    // try {

    // } on
    // return await todoDatasource.getTodo(todoId);
  }
}
