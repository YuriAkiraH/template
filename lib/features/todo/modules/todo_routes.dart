import 'package:flutter/material.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/core/routes/routes.dart';
import 'package:template/core/routes/transitions.dart';
import 'package:template/features/todo/presentation/pages/todos_page.dart';

class TodoRoutes implements FeatureRoutes {
  @override
  Map<String, PageRouteBuilder> getRoutes(RouteSettings settings) {
    return {
      TodosPage.route: PageRouteBuilder(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) =>
            sl<TodosPage>(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return Transitions.rightToLeftTransition(animation, child);
        },
      ),
    };
  }
}
