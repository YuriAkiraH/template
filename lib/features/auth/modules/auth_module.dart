import 'package:template/core/modules/feature_module.dart';
import 'package:template/features/auth/data/datasource/auth_datasource.dart';
import 'package:template/features/auth/domain/usecases/login.dart';

class AuthModule extends FeatureModule {
  AuthModule(super.sl);

  @override
  void registerControllers() {}

  @override
  void registerDataSources() {
    sl.registerLazySingleton<AuthDatasource>(() => AuthDatasource(sl()));
  }

  @override
  void registerPages() {}

  @override
  void registerUseCases() {
    sl.registerLazySingleton(() => Login(sl()));
  }

  @override
  void registerRepositories() {}
}
