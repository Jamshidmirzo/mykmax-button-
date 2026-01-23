import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kmax/core/config/local_config.dart';
import 'package:kmax/service_locator.dart';


class ThemeModeNotifier extends Notifier<ThemeMode> {
  late final LocalConfig _localConfig;

  @override
  ThemeMode build() {
    _localConfig = getIt<LocalConfig>();
    _loadThemeMode();
    return ThemeMode.system;
  }


  Future<void> _loadThemeMode() async {
    final mode = await _localConfig.getThemeMode();
    state = mode;
  }


  Future<void> setThemeMode(ThemeMode mode) async {
    state = mode;
    await _localConfig.saveThemeMode(mode);
  }


  void toggleTheme() {
    final newMode = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    setThemeMode(newMode);
  }
}


final themeModeProvider = NotifierProvider<ThemeModeNotifier, ThemeMode>(
  ThemeModeNotifier.new,
);
