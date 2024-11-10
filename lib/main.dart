import 'package:flutter/material.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InjectionContainer().init();
  runApp(const MainApp());
}
