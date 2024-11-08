import 'package:get_it/get_it.dart';
import 'package:template/core/modules/feature_module.dart';
import 'package:template/features/home/presentation/controller/home_controller.dart';
import 'package:template/features/home/presentation/pages/home_page.dart';

class HomeModule extends FeatureModule {
  HomeModule(super.sl);

  @override
  void registerControllers(GetIt sl) {
    sl.registerFactory(() => HomeController());
  }

  @override
  void registerDataSources(GetIt sl) {}

  @override
  void registerPages(GetIt sl) {
    sl.registerFactory(() => HomePage(controller: sl()));
  }

  @override
  void registerRepositories(GetIt sl) {}

  @override
  void registerUseCases(GetIt sl) {}
}
