import 'package:template/core/modules/feature_module.dart';
import 'package:template/features/auth/data/datasource/auth_datasource.dart';
import 'package:template/features/auth/domain/usecases/login.dart';
import 'package:template/features/auth/presentation/controller/login_controller.dart';
import 'package:template/features/auth/presentation/pages/login_page.dart';

class AuthModule extends FeatureModule {
  AuthModule(super.sl);

  @override
  void registerControllers() {
    sl.registerFactory(() => LoginController());
  }

  @override
  void registerDataSources() {
    sl.registerLazySingleton<AuthDatasource>(() => AuthDatasource(sl()));
  }

  @override
  void registerPages() {
    sl.registerFactory(() => LoginPage(controller: sl()));
  }

  @override
  void registerUseCases() {
    sl.registerLazySingleton(() => Login(sl()));
  }

  @override
  void registerRepositories() {}
}
