import 'package:get_it/get_it.dart';

abstract class FeatureModule {
  final GetIt sl;

  FeatureModule(this.sl) {
    registerDataSources();
    registerRepositories();
    registerUseCases();
    registerControllers();
    registerPages();
  }

  void registerDataSources();
  void registerRepositories();
  void registerUseCases();
  void registerControllers();
  void registerPages();
}
