import 'package:mobx/mobx.dart';
import 'package:template/core/extensions/controller_extensions.dart';
import 'package:template/core/modules/injection_container.dart';
import 'package:template/features/auth/domain/models/credentials.dart';
import 'package:template/features/auth/domain/usecases/login.dart';

class HomeController with ControllerExtensions {
  @readonly
  bool didInit = false;

  @action
  Future<void> init() async {
    trySafeAction(() async {
      await _getFarmInfo();
    });
  }

  Future<void> _getFarmInfo() async {
    await Future.delayed(Duration(seconds: 2));
  }

  Future<void> doSomething() async {
    await trySafeAction(() async {
      final login = sl<Login>();
      login(
        Credentials(username: 'emilys', password: 'emilyspass'),
      );
    });
  }
}
