import 'package:template/core/modules/feature_module.dart';
import 'package:template/features/main_app/presentation/pages/main_app.dart';

class MainAppModule extends FeatureModule {
  MainAppModule(super.sl);

  @override
  void registerControllers() {}

  @override
  void registerDataSources() {}

  @override
  void registerPages() {
    sl.registerFactory(() => const MainApp());
  }

  @override
  void registerRepositories() {}

  @override
  void registerUseCases() {}
}
