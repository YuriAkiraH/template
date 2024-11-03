import 'package:get_it/get_it.dart';

abstract class FeatureModule {
  Future<void> init(GetIt sl) async {
    _registerDataSources(sl);
    _registerRepositories(sl);
    _registerUseCases(sl);
    _registerControllers(sl);
    _registerPages(sl);
  }

  Future<void> _registerDataSources(GetIt sl);
  Future<void> _registerRepositories(GetIt sl);
  Future<void> _registerUseCases(GetIt sl);
  Future<void> _registerControllers(GetIt sl);
  Future<void> _registerPages(GetIt sl);
}
