import 'package:flutter/material.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/core/routes/transitions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static MapEntry<String, PageRouteBuilder> route(RouteSettings settings) {
    return MapEntry(
      'Home',
      PageRouteBuilder(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) => sl<HomePage>(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return Transitions.rightToLeftTransition(animation, child);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home page'),
    );
  }
}
