// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:injectable/injectable.dart';
import 'package:kmax/core/config/local_config.dart';

@lazySingleton
class LocalDatasources {
  LocalConfig localConfig;
  LocalDatasources({required this.localConfig});

  Future<void> isShowSave(bool isShowed) async {
    return localConfig.isShowedSave(isShowed);
  }

  Future<bool> check() async {
    return localConfig.isShowed();
  }
}
