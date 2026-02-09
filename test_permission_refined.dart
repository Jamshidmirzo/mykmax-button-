import 'package:kmax/features/main/data/model/user_permission/user_permission_model.dart';
import 'package:kmax/features/main/data/model/user_permission_group/user_permission_group_model.dart';
import 'package:kmax/features/main/data/model/user_permission_group/user_permission_group_model_extension.dart';

void main() {
  final userGroup = UserPermissionGroupModel.user(
    id: 1,
    name: 'User',
    codename: 'user',
    permissions: [
      UserPermissionModel.simpleUser(id: 2, codename: 'user_perm'),
    ],
  );

  final adminGroup = UserPermissionGroupModel.superAdmin(
    id: 2,
    name: 'Super Admin',
    codename: 'superadmin',
    permissions: [
      UserPermissionModel.admin(id: 1, codename: 'admin_perm'),
    ],
  );

  final allGroups = [userGroup, adminGroup];

  bool check(String codename, String? groupCodename) {
    if (groupCodename != null) {
      final group = allGroups.where((e) => e.codename == groupCodename).firstOrNull;
      return group?.hasPermission(codename) ?? false;
    } else {
      return allGroups.any((group) => group.hasPermission(codename));
    }
  }

  print("Check 'user_perm' in 'user' group: ${check('user_perm', 'user')}"); // true
  print("Check 'user_perm' in 'superadmin' group: ${check('user_perm', 'superadmin')}"); // false
  print("Check 'admin_perm' in 'superadmin' group: ${check('admin_perm', 'superadmin')}"); // true
  print("Check 'admin_perm' globally: ${check('admin_perm', null)}"); // true
  print("Check 'random_perm' globally: ${check('random_perm', null)}"); // false
}
