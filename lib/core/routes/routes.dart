import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:template/features/home/modules/home_routes.dart';
import 'package:template/features/home/presentation/pages/home_page.dart';

class Routes {
  static Map<String, PageRouteBuilder> getPagesRoutes(RouteSettings settings) {
    if (kDebugMode) {
      log('📂 ===> ${settings.name}');
    }

    final Map<String, PageRouteBuilder> routes = {};
    routes.addEntries(HomeRoutes().routes(settings).entries);
    return routes;
  }
}
