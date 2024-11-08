import 'package:get_it/get_it.dart';

abstract class FeatureModule {
  FeatureModule(GetIt sl) {
    registerDataSources(sl);
    registerRepositories(sl);
    registerUseCases(sl);
    registerControllers(sl);
    registerPages(sl);
  }

  void registerDataSources(GetIt sl);
  void registerRepositories(GetIt sl);
  void registerUseCases(GetIt sl);
  void registerControllers(GetIt sl);
  void registerPages(GetIt sl);
}
