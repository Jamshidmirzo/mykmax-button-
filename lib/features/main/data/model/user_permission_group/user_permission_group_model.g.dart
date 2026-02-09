// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_permission_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuperAdmin _$SuperAdminFromJson(Map<String, dynamic> json) => SuperAdmin(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  codename: json['codename'] as String,
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => UserPermissionModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$SuperAdminToJson(SuperAdmin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'codename': instance.codename,
      'permissions': instance.permissions,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  codename: json['codename'] as String,
  permissions: (json['permissions'] as List<dynamic>?)
      ?.map((e) => UserPermissionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'codename': instance.codename,
  'permissions': instance.permissions,
};

HR _$HRFromJson(Map<String, dynamic> json) => HR(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  codename: json['codename'] as String,
  permissions: (json['permissions'] as List<dynamic>?)
      ?.map((e) => UserPermissionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HRToJson(HR instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'codename': instance.codename,
  'permissions': instance.permissions,
};

ShootingCarOrderAdmin _$ShootingCarOrderAdminFromJson(
  Map<String, dynamic> json,
) => ShootingCarOrderAdmin(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  codename: json['codename'] as String,
  permissions: (json['permissions'] as List<dynamic>?)
      ?.map((e) => UserPermissionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ShootingCarOrderAdminToJson(
  ShootingCarOrderAdmin instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'codename': instance.codename,
  'permissions': instance.permissions,
};

ShootingCarOrderUser _$ShootingCarOrderUserFromJson(
  Map<String, dynamic> json,
) => ShootingCarOrderUser(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  codename: json['codename'] as String,
  permissions: (json['permissions'] as List<dynamic>?)
      ?.map((e) => UserPermissionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ShootingCarOrderUserToJson(
  ShootingCarOrderUser instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'codename': instance.codename,
  'permissions': instance.permissions,
};

Unknown _$UnknownFromJson(Map<String, dynamic> json) => Unknown(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  codename: json['codename'] as String,
  permissions: (json['permissions'] as List<dynamic>?)
      ?.map((e) => UserPermissionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UnknownToJson(Unknown instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'codename': instance.codename,
  'permissions': instance.permissions,
};
