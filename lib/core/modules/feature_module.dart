import 'package:get_it/get_it.dart';

abstract class FeatureModule {
  Future<void> init(GetIt sl) async {
    registerDataSources(sl);
    registerRepositories(sl);
    registerUseCases(sl);
    registerControllers(sl);
    registerPages(sl);
  }

  Future<void> registerDataSources(GetIt sl);
  Future<void> registerRepositories(GetIt sl);
  Future<void> registerUseCases(GetIt sl);
  Future<void> registerControllers(GetIt sl);
  Future<void> registerPages(GetIt sl);
}
