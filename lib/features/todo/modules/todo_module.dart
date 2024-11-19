import 'package:template/core/modules/feature_module.dart';
import 'package:template/features/todo/data/datasource/todo_datasource.dart';
import 'package:template/features/todo/domain/usecases/get_todo.dart';
import 'package:template/features/todo/domain/usecases/list_todos.dart';
import 'package:template/features/todo/presentation/controller/todos_controller.dart';
import 'package:template/features/todo/presentation/pages/todos_page.dart';

class TodoModule extends FeatureModule {
  TodoModule(super.sl);

  @override
  void registerControllers() {
    sl.registerFactory(() => TodosController(sl()));
  }

  @override
  void registerDataSources() {
    sl.registerLazySingleton<TodoDatasource>(() => TodoDatasource(sl()));
  }

  @override
  void registerPages() {
    sl.registerFactory(() => TodosPage(controller: sl()));
  }

  @override
  void registerRepositories() {}

  @override
  void registerUseCases() {
    sl.registerLazySingleton(() => GetTodo(sl()));
    sl.registerLazySingleton(() => ListTodos(sl()));
  }
}
