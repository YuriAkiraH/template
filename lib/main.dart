import 'package:flutter/material.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/main_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InjectionContainer().init();
  runApp(const MainApp());
}
