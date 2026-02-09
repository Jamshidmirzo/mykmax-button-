import 'package:freezed_annotation/freezed_annotation.dart';
import '../user_permission/user_permission_model.dart';

part 'user_permission_group_model.freezed.dart';
part 'user_permission_group_model.g.dart';

class UserPermissionGroupKeys {
  static const String superadmin = 'superadmin';
  static const String hr = 'hr';
  static const String shootingCarOrderUser = 'shooting_car_order_user';
  static const String shootingCarOrderAdmin = 'shooting_car_order_admin';
  static const String user = 'user';
  static const String unknown = 'unknown';
}

enum UserPermissionGroupCodename {
  superadmin,
  hr,
  shootingCarOrderUser,
  shootingCarOrderAdmin,
  user,
  unknown,
}

@Freezed(
  unionKey: 'codename',
  fallbackUnion: UserPermissionGroupKeys.unknown,
)
abstract class UserPermissionGroupModel with _$UserPermissionGroupModel {
  const UserPermissionGroupModel._();
  @FreezedUnionValue(UserPermissionGroupKeys.superadmin)
  const factory UserPermissionGroupModel.superAdmin({
    required int id,
    required String name,
    required String codename,
    @Default([]) List<UserPermissionModel> permissions,
  }) = SuperAdmin;

  @FreezedUnionValue(UserPermissionGroupKeys.user)
  const factory UserPermissionGroupModel.user({
    required int id,
    required String name,
    required String codename,
    List<UserPermissionModel>? permissions,
  }) = User;

  @FreezedUnionValue(UserPermissionGroupKeys.hr)
  const factory UserPermissionGroupModel.hr({
    required int id,
    required String name,
    required String codename,
    List<UserPermissionModel>? permissions,
  }) = HR;

  @FreezedUnionValue(UserPermissionGroupKeys.shootingCarOrderAdmin)
  const factory UserPermissionGroupModel.shootingCarOrderAdmin({
    required int id,
    required String name,
    required String codename,
    List<UserPermissionModel>? permissions,
  }) = ShootingCarOrderAdmin;

  @FreezedUnionValue(UserPermissionGroupKeys.shootingCarOrderUser)
  const factory UserPermissionGroupModel.shootingCarOrderUser({
    required int id,
    required String name,
    required String codename,
    List<UserPermissionModel>? permissions,
  }) = ShootingCarOrderUser;

  @FreezedUnionValue(UserPermissionGroupKeys.unknown)
  const factory UserPermissionGroupModel.unknown({
    required int id,
    required String name,
    required String codename,
    List<UserPermissionModel>? permissions,
  }) = Unknown;
  factory UserPermissionGroupModel.fromJson(Map<String, dynamic> json) =>
      _$UserPermissionGroupModelFromJson(json);
}
