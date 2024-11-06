import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/core/routes/routes.dart';
import 'package:template/features/home/presentation/pages/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayColor: AppColor.whiteText.withOpacity(0.5),
      overlayWidgetBuilder: (_) {
        return Center(
          child: SizedBox(
            height: 42,
            width: 42,
            child: CircularProgressIndicator(
              color: AppColor.primaryColor,
            ),
          ),
        );
      },
      child: MaterialApp(
        onGenerateRoute: (settings) {
          return Routes.getPagesRoutes(settings)[settings.name];
        },
        initialRoute: HomePage.route,
        routes: {
          HomePage.route: (context) => sl<HomePage>(),
        },
      ),
    );
  }
}