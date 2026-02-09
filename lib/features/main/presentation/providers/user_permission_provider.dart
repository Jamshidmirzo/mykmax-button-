import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kmax/features/main/data/datasource/user_permission_data_sources.dart';
import 'package:kmax/features/main/data/model/user_permission_group/user_permission_group_model.dart';
import 'package:kmax/features/main/presentation/providers/user_permission_arg.dart';
import 'package:kmax/service_locator.dart';

class UserPermissionNotifier extends Notifier<bool> {
  UserPermissionNotifier({
    required this.dataSources,
    required this.arg,
  });

  final UserPermissionDataSources dataSources;
  final UserPermissionArg arg;

  @override
  bool build() {
    _checkPermission(arg);
    return false;
  }

  Future<void> _checkPermission(UserPermissionArg arg) async {
    final groups = await dataSources.getPermissionGroups();

    UserPermissionGroupModel? group;
    if (arg.userId != null) {
      group = groups.where((e) => e.id == arg.userId).firstOrNull;
    } else if (arg.groupCodename != null) {
      group = groups.where((e) => e.codename == arg.groupCodename).firstOrNull;
    } else {
      group = groups.where((e) => e.id == 5).firstOrNull;
    }

    if (group == null) {
      state = false;
      return;
    }

    state = group.permissions?.any((p) => p.codename == arg.codename) ?? false;
  }

  UserPermissionNotifier copyWith({
    UserPermissionDataSources? dataSources,

    UserPermissionArg? arg,
  }) {
    return UserPermissionNotifier(
      dataSources: dataSources ?? this.dataSources,
      arg: arg ?? this.arg,
    );
  }
}

final userPermissionProvider = NotifierProvider.autoDispose
    .family<UserPermissionNotifier, bool, UserPermissionArg>(
      (arg) {
        return UserPermissionNotifier(
          dataSources: getIt<UserPermissionDataSources>(),
          arg: arg,
        );
      },
    );
