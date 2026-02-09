part of '../user_permission/user_permission_model.dart';

extension UserPermissionGroupX on UserPermissionModel {
  UserPermissionCodename get type {
    return switch (this) {
      Administrator _ => UserPermissionCodename.administrator,
      SomeRandom _ => UserPermissionCodename.someRandom,
      AiChat _ => UserPermissionCodename.aiChat,
      CanCreateUser() => UserPermissionCodename.canCreateUser,
      CanCreateProject() => UserPermissionCodename.canCreateProject,
      CarOrderAdmin() => UserPermissionCodename.carOrderAdmin,
      KeycloakCarOrderUserPermission() => UserPermissionCodename.carOrderUser,
      EmployeeManager() => UserPermissionCodename.employeeManager,
      Guest() => UserPermissionCodename.guest,
      ShootingOrderAdmin() => UserPermissionCodename.shootingOrderAdmin,
      ShootingOrderUser() => UserPermissionCodename.shootingOrderUser,
      SignViewAllDocuments() => UserPermissionCodename.signViewAllDocuments,
      SignViewOwnDocuments() => UserPermissionCodename.signViewOwnDocuments,
      SimpleUser() => UserPermissionCodename.simpleUser,
      VideoSurveillance() => UserPermissionCodename.videoSurveillance,
      UnknownPermission() => UserPermissionCodename.unknown,
    };
  }

  
}
