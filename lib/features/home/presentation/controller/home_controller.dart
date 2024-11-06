import 'package:mobx/mobx.dart';
import 'package:template/core/extensions/controller_extensions.dart';

class HomeController with ControllerExtensions {
  @readonly
  bool isBusy = false;

  @action
  Future<void> init() async {}
}
