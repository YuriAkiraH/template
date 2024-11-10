import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:template/features/home/modules/home_routes.dart';

abstract class FeatureRoutes {
  Map<String, PageRouteBuilder> getRoutes(RouteSettings settings);
}

class Routes {
  static Iterable<FeatureRoutes> featureRoutes = [
    HomeRoutes(),
  ];

  static Map<String, PageRouteBuilder> getPagesRoutes(RouteSettings settings) {
    if (kDebugMode) {
      log('📂 ===> ${settings.name}');
    }

    final Map<String, PageRouteBuilder> routes = {};
    for (final feature in featureRoutes) {
      routes.addEntries(feature.getRoutes(settings).entries);
    }
    return routes;
  }
}
