import 'package:async/async.dart';
import 'package:template/core/network/dummyjson_api_client/api_client/dummyjson_api_client.dart';
import 'package:template/core/network/dummyjson_api_client/models/pageable_list_request.dart';
import 'package:template/features/todo/domain/models/todo.dart';
import 'package:template/features/todo/domain/models/todos.dart';

class TodoDatasource {
  final DummyjsonApiClient _dummyjsonApi;

  TodoDatasource(this._dummyjsonApi);

  Future<Result<Todo>> getTodo(int todoId) async {
    return await _dummyjsonApi.get<Todo>(
      '/todos/$todoId',
      Todo.fromJson,
    );
  }

  Future<Result<Todos>> listTodos(
      PageableListRequest pageableListRequest) async {
    return await _dummyjsonApi.get<Todos>(
      '/todos?limit=${pageableListRequest.limit}&skip=${pageableListRequest.skip}',
      Todos.fromJson,
    );
  }
}
