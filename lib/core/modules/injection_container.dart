import 'package:get_it/get_it.dart';
import 'package:template/core/modules/core_module.dart';
import 'package:template/features/auth/modules/auth_module.dart';
import 'package:template/features/home/modules/home_module.dart';
import 'package:template/features/todo/modules/todo_module.dart';

final sl = GetIt.instance;

class InjectionContainer {
  Future<void> init() async {
    CoreModule(sl);
    HomeModule(sl);
    AuthModule(sl);
    TodoModule(sl);
  }
}
