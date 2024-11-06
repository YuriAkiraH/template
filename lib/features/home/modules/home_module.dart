import 'package:get_it/get_it.dart';
import 'package:template/core/modules/feature_module.dart';
import 'package:template/features/home/presentation/controller/home_controller.dart';
import 'package:template/features/home/presentation/pages/home_page.dart';

class HomeModule extends FeatureModule {
  @override
  Future<void> registerControllers(GetIt sl) async {
    sl.registerFactory(() => HomeController());
  }

  @override
  Future<void> registerDataSources(GetIt sl) async {}

  @override
  Future<void> registerPages(GetIt sl) async {
    sl.registerFactory(() => HomePage(controller: sl()));
  }

  @override
  Future<void> registerRepositories(GetIt sl) async {}

  @override
  Future<void> registerUseCases(GetIt sl) async {}
}
