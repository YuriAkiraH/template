import 'package:template/features/todo/presentation/view_model/todo_view_model.dart';

class TodosViewModel {
  final List<TodoViewModel> todos;

  TodosViewModel({
    required this.todos,
  });

  int get count => todos.length;
}
