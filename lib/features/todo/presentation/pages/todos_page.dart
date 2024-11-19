import 'package:flutter/material.dart';
import 'package:template/features/todo/presentation/controller/todos_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TodosPage extends StatefulWidget {
  static String route = 'Todos';
  const TodosPage({
    super.key,
    required this.controller,
  });

  final TodosController controller;

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.controller.buildContext = context;
      widget.controller.init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Todos'),
        ),
        body: !widget.controller.didInit
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: widget.controller.todos!.count,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      widget.controller.todos!.todos[index].todo,
                    ),
                  );
                },
              ),
      ),
    );
  }
}
