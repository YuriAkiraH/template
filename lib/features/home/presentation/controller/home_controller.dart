import 'package:mobx/mobx.dart';
import 'package:template/core/extensions/controller_extensions.dart';

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
      await Future.delayed(Duration(seconds: 2));
    });
  }
}
