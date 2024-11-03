import 'package:get_it/get_it.dart';
import 'package:template/core/modules/feature_module.dart';
import 'package:template/features/home/modules/home_module.dart';

final sl = GetIt.instance;

class InjectionContainer {
  final _featureModules = <FeatureModule>[
    HomeModule(),
  ];

  Future<void> init() async {
    _featureModules.map((e) => e.init(sl));
  }
}
