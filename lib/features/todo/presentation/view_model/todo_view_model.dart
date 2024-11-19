import 'package:template/features/todo/domain/models/todo.dart';

class TodoViewModel extends Todo {
  TodoViewModel({
    required super.id,
    required super.todo,
    required super.completed,
    required super.userId,
  });

  bool get isEmpty => todo.isEmpty;
}
