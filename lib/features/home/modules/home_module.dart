import 'package:template/core/modules/feature_module.dart';
import 'package:template/features/home/presentation/controller/home_controller.dart';
import 'package:template/features/home/presentation/pages/home_page.dart';

class HomeModule extends FeatureModule {
  HomeModule(super.sl);

  @override
  void registerControllers() {
    sl.registerFactory(() => HomeController());
  }

  @override
  void registerDataSources() {}

  @override
  void registerPages() {
    sl.registerFactory(() => HomePage(controller: sl()));
  }

  @override
  void registerRepositories() {}

  @override
  void registerUseCases() {}
}
