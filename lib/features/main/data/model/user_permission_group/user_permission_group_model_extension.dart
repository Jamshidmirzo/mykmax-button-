import 'user_permission_group_model.dart';

extension UserPermissionGroupModelX on UserPermissionGroupModel {
  bool hasPermission(String codename) {
    if (this is SuperAdmin) return true;


    final perms = permissions;
    if (perms == null) return false;
    return perms.any((p) => p.codename == codename);
  }
}

