import 'package:flutter/material.dart';
import 'package:template/features/home/presentation/pages/home_page.dart';

abstract class FeatureRoutes {
  Map<String, PageRouteBuilder> routes(RouteSettings settings);
}

class HomeRoutes implements FeatureRoutes {
  @override
  Map<String, PageRouteBuilder> routes(RouteSettings settings) =>
      Map<String, PageRouteBuilder>.fromEntries([
        HomePage.route(settings),
      ]);
}
