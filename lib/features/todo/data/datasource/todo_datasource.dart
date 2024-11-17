import 'package:template/core/network/dummyjson_api_client/api_client/dummyjson_api_client.dart';
import 'package:template/core/network/dummyjson_api_client/models/pageable_list_request.dart';
import 'package:template/features/todo/domain/models/todo.dart';
import 'package:template/features/todo/domain/models/todos.dart';

class TodoDatasource {
  final DummyjsonApiClient _dummyjsonApi;

  TodoDatasource(this._dummyjsonApi);

  Future<Todo> getTodo(int todoId) async {
    final result = await _dummyjsonApi.get('/todos/$todoId');
    return Todo.fromJson(result);
  }

  Future<Todos> listTodos(PageableListRequest pageableListRequest) async {
    final result = await _dummyjsonApi.get(
        '/todos?limit=${pageableListRequest.limit}&skip=${pageableListRequest.skip}');
    return Todos.fromJson(result);
  }
}
