import 'package:flutter/material.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/core/routes/transitions.dart';
import 'package:template/features/home/presentation/pages/home_page.dart';

abstract class FeatureRoutes {
  Map<String, PageRouteBuilder> getRoutes(RouteSettings settings);
}

class HomeRoutes implements FeatureRoutes {
  @override
  Map<String, PageRouteBuilder> getRoutes(RouteSettings settings) {
    return {
      HomePage.route: PageRouteBuilder(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) => sl<HomePage>(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return Transitions.rightToLeftTransition(animation, child);
        },
      ),
    };
  }
}
