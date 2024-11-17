import 'package:template/core/modules/feature_module.dart';
import 'package:template/features/todo/data/datasource/todo_datasource.dart';
import 'package:template/features/todo/domain/usecases/get_todo.dart';
import 'package:template/features/todo/domain/usecases/list_todos.dart';

class TodoModule extends FeatureModule {
  TodoModule(super.sl);

  @override
  void registerControllers() {}

  @override
  void registerDataSources() {
    sl.registerLazySingleton<TodoDatasource>(() => TodoDatasource(sl()));
  }

  @override
  void registerPages() {}

  @override
  void registerRepositories() {}

  @override
  void registerUseCases() {
    sl.registerLazySingleton(() => GetTodo(sl()));
    sl.registerLazySingleton(() => ListTodos(sl()));
  }
}
