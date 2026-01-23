// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kmax/core/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class LocalConfig {
  final SharedPreferences sharedPreferences;

  LocalConfig({required this.sharedPreferences});

  Future<bool> isShowed() async {
    return sharedPreferences.getBool(AppConstants.isAuthicated) ?? false;
  }

  Future<void> isShowedSave(bool isShowed) async {
    await sharedPreferences.setBool(AppConstants.isAuthicated, isShowed);
  }

  Future<ThemeMode> getThemeMode() async {
    final themeModeString = sharedPreferences.getString(AppConstants.themeMode);
    if (themeModeString == null) return ThemeMode.system;

    return ThemeMode.values.firstWhere(
      (mode) => mode.toString() == themeModeString,
      orElse: () => ThemeMode.system,
    );
  }

  Future<void> saveThemeMode(ThemeMode mode) async {
    await sharedPreferences.setString(AppConstants.themeMode, mode.toString());
  }
}
