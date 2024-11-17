import 'package:async/async.dart';
import 'package:template/core/network/dummyjson_api_client/models/pageable_list_request.dart';
import 'package:template/features/todo/data/datasource/todo_datasource.dart';

import 'package:template/features/todo/domain/models/todos.dart';

class ListTodos {
  final TodoDatasource todoDatasource;

  ListTodos(this.todoDatasource);

  Future<Result<Todos>> call([
    PageableListRequest pageableListRequest = const PageableListRequest(),
  ]) async {
    final result = await todoDatasource.listTodos(pageableListRequest);
    return Result.value(result);
  }
}
