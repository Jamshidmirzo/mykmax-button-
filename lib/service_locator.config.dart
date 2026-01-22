// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import 'core/config/local_config.dart' as _i705;
import 'core/di/register_module.dart' as _i854;
import 'features/onboardings/data/datasoruces/local_datasources.dart' as _i721;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i705.LocalConfig>(
      () => _i705.LocalConfig(sharedPreferences: gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i721.LocalDatasources>(
      () => _i721.LocalDatasources(localConfig: gh<_i705.LocalConfig>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i854.RegisterModule {}
