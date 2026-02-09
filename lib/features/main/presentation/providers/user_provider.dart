// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kmax/features/main/data/datasource/user_permission_data_sources.dart';
import 'package:kmax/features/main/data/model/user_permission_group/user_permission_group_model.dart';
import 'package:kmax/service_locator.dart';

class UserNotifier extends Notifier<List<UserPermissionGroupModel>> {
  UserNotifier({
    required this.dataSources,
  });
  UserPermissionDataSources dataSources;

  @override
  List<UserPermissionGroupModel> build() {
    Future.microtask(() => getPermissionUser());
    return [];
  }

  Future<void> getPermissionUser() async {
    List<UserPermissionGroupModel> users = await dataSources
        .getPermissionGroups();
    state = users;
  }
}

final userProvider =
    NotifierProvider.autoDispose<UserNotifier, List<UserPermissionGroupModel>>(
      () {
        return UserNotifier(dataSources: getIt<UserPermissionDataSources>());
      },
    );
