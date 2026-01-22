// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:injectable/injectable.dart';
import 'package:kmax/core/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class LocalConfig {
  SharedPreferences sharedPreferences;
  LocalConfig({required this.sharedPreferences});

  Future<bool> isShowed() async {
    return sharedPreferences.getBool(AppConstants.isAuthicated) ?? false;
  }

  Future<void> isShowedSave(bool isShowed) async {
    await sharedPreferences.setBool(AppConstants.isAuthicated, isShowed);
    return;
  }
}
