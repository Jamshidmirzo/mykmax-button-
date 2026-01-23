import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kmax/core/config/local_config.dart';
import 'package:kmax/service_locator.dart';

/// A notifier that manages the application's theme mode.
/// Uses [LocalConfig] for persistence and defaults to [ThemeMode.system].
class ThemeModeNotifier extends Notifier<ThemeMode> {
  late final LocalConfig _localConfig;

  @override
  ThemeMode build() {
    _localConfig = getIt<LocalConfig>();
    _loadThemeMode();
    return ThemeMode.system;
  }

  /// Loads the saved theme mode from persistent storage.
  Future<void> _loadThemeMode() async {
    final mode = await _localConfig.getThemeMode();
    state = mode;
  }

  /// Updates the theme mode and persists the choice.
  Future<void> setThemeMode(ThemeMode mode) async {
    state = mode;
    await _localConfig.saveThemeMode(mode);
  }

  /// Toggles between light and dark modes.
  void toggleTheme() {
    final newMode = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    setThemeMode(newMode);
  }
}

/// Global provider for application-wide theme mode management.
final themeModeProvider = NotifierProvider<ThemeModeNotifier, ThemeMode>(
  ThemeModeNotifier.new,
);
