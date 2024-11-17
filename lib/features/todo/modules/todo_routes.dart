import 'package:flutter/material.dart';
import 'package:template/core/routes/routes.dart';

class TodoRoutes implements FeatureRoutes {
  @override
  Map<String, PageRouteBuilder> getRoutes(RouteSettings settings) {
    return {
      // HomePage.route: PageRouteBuilder(
      //   settings: settings,
      //   transitionDuration: const Duration(milliseconds: 300),
      //   pageBuilder: (context, animation, secondaryAnimation) => sl<HomePage>(),
      //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //     return Transitions.rightToLeftTransition(animation, child);
      //   },
      // ),
    };
  }
}
