import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/core/routes/routes.dart';
import 'package:template/core/themes/app_theme.dart';
import 'package:template/features/home/presentation/pages/home_page.dart';

class MainApp extends StatelessWidget {
  static BuildContext get context => MainApp.navigatorKey.currentState!.context;
  static final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  static final navigatorKey = GlobalKey<NavigatorState>();

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      // overlayColor: AppColor.whiteText.withOpacity(0.5),
      overlayWidgetBuilder: (_) {
        return const Center(
          child: SizedBox(
            height: 42,
            width: 42,
            child: CircularProgressIndicator(
                // color: AppColor.primaryColor,
                ),
          ),
        );
      },
      child: MaterialApp(
        scaffoldMessengerKey: scaffoldKey,
        navigatorKey: navigatorKey,
        onGenerateRoute: (settings) {
          return Routes.getPagesRoutes(settings)[settings.name];
        },
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        initialRoute: HomePage.route,
        home: sl<HomePage>(),
        routes: {
          HomePage.route: (context) => sl<HomePage>(),
        },
      ),
    );
  }
}
