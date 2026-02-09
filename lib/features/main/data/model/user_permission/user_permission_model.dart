// ignore_for_file: unused_element

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_permission_model.freezed.dart';
part 'user_permission_model.g.dart';
part '../user_permission_group/user_permission_group_extension.dart';

abstract final class UserPermissionCodenameKeys {
  static const unknown = 'unknown';

  static const String administrator = 'keycloak_administrator';
  static const String someRandom = 'some_random_permission';
  static const String aiChat = 'keycloak_ai_chat';
  static const String canCreateUser = 'keycloak_can_create_keycloak_user';
  static const String canCreateProject = 'keycloak_can_create_project';
  static const String carOrderAdmin = 'keycloak_car_order_admin';
  static const String carOrderUser = 'keycloak_car_order_user';
  static const String employeeManager = 'keycloak_employee_manager';
  static const String guest = 'keycloak_guest';
  static const String shootingOrderAdmin = 'keycloak_shooting_order_admin';
  static const String shootingOrderUser = 'keycloak_shooting_order_user';
  static const String signViewAllDocuments = 'keycloak_sign_view_all_documents';
  static const String signViewOwnDocuments = 'keycloak_sign_view_own_documents';
  static const String simpleUser = 'keycloak_simple_user';
  static const String videoSurveillance = 'keycloak_video_surveillance';
}

enum UserPermissionCodename {
  administrator,
  someRandom,
  aiChat,
  canCreateUser,
  canCreateProject,
  carOrderAdmin,
  carOrderUser,
  employeeManager,
  guest,
  shootingOrderAdmin,
  shootingOrderUser,
  signViewAllDocuments,
  signViewOwnDocuments,
  simpleUser,
  videoSurveillance,
  unknown,
}

@Freezed(
  unionKey: 'codename',
  fallbackUnion: UserPermissionCodenameKeys.unknown,
  unionValueCase: FreezedUnionCase.snake,
)
sealed class UserPermissionModel with _$UserPermissionModel {
  const UserPermissionModel._();

  @FreezedUnionValue(UserPermissionCodenameKeys.administrator)
  const factory UserPermissionModel.admin({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = Administrator;

  @FreezedUnionValue(UserPermissionCodenameKeys.someRandom)
  const factory UserPermissionModel.someRandom({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = SomeRandom;

  @FreezedUnionValue(UserPermissionCodenameKeys.aiChat)
  const factory UserPermissionModel.aichat({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = AiChat;

  @FreezedUnionValue(UserPermissionCodenameKeys.canCreateUser)
  const factory UserPermissionModel.canCreateUser({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = CanCreateUser;

  @FreezedUnionValue(UserPermissionCodenameKeys.canCreateProject)
  const factory UserPermissionModel.canCreateProject({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = CanCreateProject;

  @FreezedUnionValue(UserPermissionCodenameKeys.carOrderAdmin)
  const factory UserPermissionModel.carOrderAdmin({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = CarOrderAdmin;

  @FreezedUnionValue(UserPermissionCodenameKeys.carOrderUser)
  const factory UserPermissionModel.keycloakCarOrderUser({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = KeycloakCarOrderUserPermission;

  @FreezedUnionValue(UserPermissionCodenameKeys.employeeManager)
  const factory UserPermissionModel.employeeManager({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = EmployeeManager;

  @FreezedUnionValue(UserPermissionCodenameKeys.guest)
  const factory UserPermissionModel.guest({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = Guest;

  @FreezedUnionValue(UserPermissionCodenameKeys.shootingOrderAdmin)
  const factory UserPermissionModel.shootingOrderAdmin({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = ShootingOrderAdmin;

  @FreezedUnionValue(UserPermissionCodenameKeys.shootingOrderUser)
  const factory UserPermissionModel.shootingOrderUser({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = ShootingOrderUser;

  @FreezedUnionValue(UserPermissionCodenameKeys.signViewAllDocuments)
  const factory UserPermissionModel.signViewAllDocuments({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = SignViewAllDocuments;

  @FreezedUnionValue(UserPermissionCodenameKeys.signViewOwnDocuments)
  const factory UserPermissionModel.signViewOwnDocuments({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = SignViewOwnDocuments;

  @FreezedUnionValue(UserPermissionCodenameKeys.simpleUser)
  const factory UserPermissionModel.simpleUser({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = SimpleUser;

  @FreezedUnionValue(UserPermissionCodenameKeys.videoSurveillance)
  const factory UserPermissionModel.videoSurveillance({
    required int id,
    required String codename,
    String? name,
    String? description,
  }) = VideoSurveillance;

  @FreezedUnionValue(UserPermissionCodenameKeys.unknown)
  const factory UserPermissionModel.unknown({
    required int id,
    String? codename,
    String? name,
    String? description,
  }) = UnknownPermission;

  factory UserPermissionModel.fromJson(Map<String, dynamic> json) =>
      _$UserPermissionModelFromJson(json);
}
