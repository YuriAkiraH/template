import 'package:get_it/get_it.dart';
import 'package:template/core/network/dummyjson_api_client/api_client/dummyjson_api_client.dart';
import 'package:template/core/network/dummyjson_api_client/api_settings/dummyjson_api_settings.dart';

class CoreModule {
  CoreModule(GetIt sl) {
    _initNetworkModules(sl);
  }

  void _initNetworkModules(GetIt sl) {
    sl.registerLazySingleton<DummyjsonApiClient>(
        () => DummyjsonApiClient(sl()));
    sl.registerLazySingleton<DummyjsonApiSettings>(
        () => DummyjsonApiSettings());
  }
}
