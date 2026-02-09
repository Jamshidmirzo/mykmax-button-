// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_permission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
UserPermissionModel _$UserPermissionModelFromJson(
  Map<String, dynamic> json
) {
        switch (json['codename']) {
                  case 'keycloak_administrator':
          return Administrator.fromJson(
            json
          );
                case 'some_random_permission':
          return SomeRandom.fromJson(
            json
          );
                case 'keycloak_ai_chat':
          return AiChat.fromJson(
            json
          );
                case 'keycloak_can_create_keycloak_user':
          return CanCreateUser.fromJson(
            json
          );
                case 'keycloak_can_create_project':
          return CanCreateProject.fromJson(
            json
          );
                case 'keycloak_car_order_admin':
          return CarOrderAdmin.fromJson(
            json
          );
                case 'keycloak_car_order_user':
          return KeycloakCarOrderUserPermission.fromJson(
            json
          );
                case 'keycloak_employee_manager':
          return EmployeeManager.fromJson(
            json
          );
                case 'keycloak_guest':
          return Guest.fromJson(
            json
          );
                case 'keycloak_shooting_order_admin':
          return ShootingOrderAdmin.fromJson(
            json
          );
                case 'keycloak_shooting_order_user':
          return ShootingOrderUser.fromJson(
            json
          );
                case 'keycloak_sign_view_all_documents':
          return SignViewAllDocuments.fromJson(
            json
          );
                case 'keycloak_sign_view_own_documents':
          return SignViewOwnDocuments.fromJson(
            json
          );
                case 'keycloak_simple_user':
          return SimpleUser.fromJson(
            json
          );
                case 'keycloak_video_surveillance':
          return VideoSurveillance.fromJson(
            json
          );
        
          default:
            return UnknownPermission.fromJson(
  json
);
        }
      
}

/// @nodoc
mixin _$UserPermissionModel {

 int get id; String? get codename; String? get name; String? get description;
/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPermissionModelCopyWith<UserPermissionModel> get copyWith => _$UserPermissionModelCopyWithImpl<UserPermissionModel>(this as UserPermissionModel, _$identity);

  /// Serializes this UserPermissionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPermissionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $UserPermissionModelCopyWith<$Res>  {
  factory $UserPermissionModelCopyWith(UserPermissionModel value, $Res Function(UserPermissionModel) _then) = _$UserPermissionModelCopyWithImpl;
@useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$UserPermissionModelCopyWithImpl<$Res>
    implements $UserPermissionModelCopyWith<$Res> {
  _$UserPermissionModelCopyWithImpl(this._self, this._then);

  final UserPermissionModel _self;
  final $Res Function(UserPermissionModel) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename! : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPermissionModel].
extension UserPermissionModelPatterns on UserPermissionModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Administrator value)?  admin,TResult Function( SomeRandom value)?  someRandom,TResult Function( AiChat value)?  aichat,TResult Function( CanCreateUser value)?  canCreateUser,TResult Function( CanCreateProject value)?  canCreateProject,TResult Function( CarOrderAdmin value)?  carOrderAdmin,TResult Function( KeycloakCarOrderUserPermission value)?  keycloakCarOrderUser,TResult Function( EmployeeManager value)?  employeeManager,TResult Function( Guest value)?  guest,TResult Function( ShootingOrderAdmin value)?  shootingOrderAdmin,TResult Function( ShootingOrderUser value)?  shootingOrderUser,TResult Function( SignViewAllDocuments value)?  signViewAllDocuments,TResult Function( SignViewOwnDocuments value)?  signViewOwnDocuments,TResult Function( SimpleUser value)?  simpleUser,TResult Function( VideoSurveillance value)?  videoSurveillance,TResult Function( UnknownPermission value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Administrator() when admin != null:
return admin(_that);case SomeRandom() when someRandom != null:
return someRandom(_that);case AiChat() when aichat != null:
return aichat(_that);case CanCreateUser() when canCreateUser != null:
return canCreateUser(_that);case CanCreateProject() when canCreateProject != null:
return canCreateProject(_that);case CarOrderAdmin() when carOrderAdmin != null:
return carOrderAdmin(_that);case KeycloakCarOrderUserPermission() when keycloakCarOrderUser != null:
return keycloakCarOrderUser(_that);case EmployeeManager() when employeeManager != null:
return employeeManager(_that);case Guest() when guest != null:
return guest(_that);case ShootingOrderAdmin() when shootingOrderAdmin != null:
return shootingOrderAdmin(_that);case ShootingOrderUser() when shootingOrderUser != null:
return shootingOrderUser(_that);case SignViewAllDocuments() when signViewAllDocuments != null:
return signViewAllDocuments(_that);case SignViewOwnDocuments() when signViewOwnDocuments != null:
return signViewOwnDocuments(_that);case SimpleUser() when simpleUser != null:
return simpleUser(_that);case VideoSurveillance() when videoSurveillance != null:
return videoSurveillance(_that);case UnknownPermission() when unknown != null:
return unknown(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Administrator value)  admin,required TResult Function( SomeRandom value)  someRandom,required TResult Function( AiChat value)  aichat,required TResult Function( CanCreateUser value)  canCreateUser,required TResult Function( CanCreateProject value)  canCreateProject,required TResult Function( CarOrderAdmin value)  carOrderAdmin,required TResult Function( KeycloakCarOrderUserPermission value)  keycloakCarOrderUser,required TResult Function( EmployeeManager value)  employeeManager,required TResult Function( Guest value)  guest,required TResult Function( ShootingOrderAdmin value)  shootingOrderAdmin,required TResult Function( ShootingOrderUser value)  shootingOrderUser,required TResult Function( SignViewAllDocuments value)  signViewAllDocuments,required TResult Function( SignViewOwnDocuments value)  signViewOwnDocuments,required TResult Function( SimpleUser value)  simpleUser,required TResult Function( VideoSurveillance value)  videoSurveillance,required TResult Function( UnknownPermission value)  unknown,}){
final _that = this;
switch (_that) {
case Administrator():
return admin(_that);case SomeRandom():
return someRandom(_that);case AiChat():
return aichat(_that);case CanCreateUser():
return canCreateUser(_that);case CanCreateProject():
return canCreateProject(_that);case CarOrderAdmin():
return carOrderAdmin(_that);case KeycloakCarOrderUserPermission():
return keycloakCarOrderUser(_that);case EmployeeManager():
return employeeManager(_that);case Guest():
return guest(_that);case ShootingOrderAdmin():
return shootingOrderAdmin(_that);case ShootingOrderUser():
return shootingOrderUser(_that);case SignViewAllDocuments():
return signViewAllDocuments(_that);case SignViewOwnDocuments():
return signViewOwnDocuments(_that);case SimpleUser():
return simpleUser(_that);case VideoSurveillance():
return videoSurveillance(_that);case UnknownPermission():
return unknown(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Administrator value)?  admin,TResult? Function( SomeRandom value)?  someRandom,TResult? Function( AiChat value)?  aichat,TResult? Function( CanCreateUser value)?  canCreateUser,TResult? Function( CanCreateProject value)?  canCreateProject,TResult? Function( CarOrderAdmin value)?  carOrderAdmin,TResult? Function( KeycloakCarOrderUserPermission value)?  keycloakCarOrderUser,TResult? Function( EmployeeManager value)?  employeeManager,TResult? Function( Guest value)?  guest,TResult? Function( ShootingOrderAdmin value)?  shootingOrderAdmin,TResult? Function( ShootingOrderUser value)?  shootingOrderUser,TResult? Function( SignViewAllDocuments value)?  signViewAllDocuments,TResult? Function( SignViewOwnDocuments value)?  signViewOwnDocuments,TResult? Function( SimpleUser value)?  simpleUser,TResult? Function( VideoSurveillance value)?  videoSurveillance,TResult? Function( UnknownPermission value)?  unknown,}){
final _that = this;
switch (_that) {
case Administrator() when admin != null:
return admin(_that);case SomeRandom() when someRandom != null:
return someRandom(_that);case AiChat() when aichat != null:
return aichat(_that);case CanCreateUser() when canCreateUser != null:
return canCreateUser(_that);case CanCreateProject() when canCreateProject != null:
return canCreateProject(_that);case CarOrderAdmin() when carOrderAdmin != null:
return carOrderAdmin(_that);case KeycloakCarOrderUserPermission() when keycloakCarOrderUser != null:
return keycloakCarOrderUser(_that);case EmployeeManager() when employeeManager != null:
return employeeManager(_that);case Guest() when guest != null:
return guest(_that);case ShootingOrderAdmin() when shootingOrderAdmin != null:
return shootingOrderAdmin(_that);case ShootingOrderUser() when shootingOrderUser != null:
return shootingOrderUser(_that);case SignViewAllDocuments() when signViewAllDocuments != null:
return signViewAllDocuments(_that);case SignViewOwnDocuments() when signViewOwnDocuments != null:
return signViewOwnDocuments(_that);case SimpleUser() when simpleUser != null:
return simpleUser(_that);case VideoSurveillance() when videoSurveillance != null:
return videoSurveillance(_that);case UnknownPermission() when unknown != null:
return unknown(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id,  String codename,  String? name,  String? description)?  admin,TResult Function( int id,  String codename,  String? name,  String? description)?  someRandom,TResult Function( int id,  String codename,  String? name,  String? description)?  aichat,TResult Function( int id,  String codename,  String? name,  String? description)?  canCreateUser,TResult Function( int id,  String codename,  String? name,  String? description)?  canCreateProject,TResult Function( int id,  String codename,  String? name,  String? description)?  carOrderAdmin,TResult Function( int id,  String codename,  String? name,  String? description)?  keycloakCarOrderUser,TResult Function( int id,  String codename,  String? name,  String? description)?  employeeManager,TResult Function( int id,  String codename,  String? name,  String? description)?  guest,TResult Function( int id,  String codename,  String? name,  String? description)?  shootingOrderAdmin,TResult Function( int id,  String codename,  String? name,  String? description)?  shootingOrderUser,TResult Function( int id,  String codename,  String? name,  String? description)?  signViewAllDocuments,TResult Function( int id,  String codename,  String? name,  String? description)?  signViewOwnDocuments,TResult Function( int id,  String codename,  String? name,  String? description)?  simpleUser,TResult Function( int id,  String codename,  String? name,  String? description)?  videoSurveillance,TResult Function( int id,  String? codename,  String? name,  String? description)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Administrator() when admin != null:
return admin(_that.id,_that.codename,_that.name,_that.description);case SomeRandom() when someRandom != null:
return someRandom(_that.id,_that.codename,_that.name,_that.description);case AiChat() when aichat != null:
return aichat(_that.id,_that.codename,_that.name,_that.description);case CanCreateUser() when canCreateUser != null:
return canCreateUser(_that.id,_that.codename,_that.name,_that.description);case CanCreateProject() when canCreateProject != null:
return canCreateProject(_that.id,_that.codename,_that.name,_that.description);case CarOrderAdmin() when carOrderAdmin != null:
return carOrderAdmin(_that.id,_that.codename,_that.name,_that.description);case KeycloakCarOrderUserPermission() when keycloakCarOrderUser != null:
return keycloakCarOrderUser(_that.id,_that.codename,_that.name,_that.description);case EmployeeManager() when employeeManager != null:
return employeeManager(_that.id,_that.codename,_that.name,_that.description);case Guest() when guest != null:
return guest(_that.id,_that.codename,_that.name,_that.description);case ShootingOrderAdmin() when shootingOrderAdmin != null:
return shootingOrderAdmin(_that.id,_that.codename,_that.name,_that.description);case ShootingOrderUser() when shootingOrderUser != null:
return shootingOrderUser(_that.id,_that.codename,_that.name,_that.description);case SignViewAllDocuments() when signViewAllDocuments != null:
return signViewAllDocuments(_that.id,_that.codename,_that.name,_that.description);case SignViewOwnDocuments() when signViewOwnDocuments != null:
return signViewOwnDocuments(_that.id,_that.codename,_that.name,_that.description);case SimpleUser() when simpleUser != null:
return simpleUser(_that.id,_that.codename,_that.name,_that.description);case VideoSurveillance() when videoSurveillance != null:
return videoSurveillance(_that.id,_that.codename,_that.name,_that.description);case UnknownPermission() when unknown != null:
return unknown(_that.id,_that.codename,_that.name,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id,  String codename,  String? name,  String? description)  admin,required TResult Function( int id,  String codename,  String? name,  String? description)  someRandom,required TResult Function( int id,  String codename,  String? name,  String? description)  aichat,required TResult Function( int id,  String codename,  String? name,  String? description)  canCreateUser,required TResult Function( int id,  String codename,  String? name,  String? description)  canCreateProject,required TResult Function( int id,  String codename,  String? name,  String? description)  carOrderAdmin,required TResult Function( int id,  String codename,  String? name,  String? description)  keycloakCarOrderUser,required TResult Function( int id,  String codename,  String? name,  String? description)  employeeManager,required TResult Function( int id,  String codename,  String? name,  String? description)  guest,required TResult Function( int id,  String codename,  String? name,  String? description)  shootingOrderAdmin,required TResult Function( int id,  String codename,  String? name,  String? description)  shootingOrderUser,required TResult Function( int id,  String codename,  String? name,  String? description)  signViewAllDocuments,required TResult Function( int id,  String codename,  String? name,  String? description)  signViewOwnDocuments,required TResult Function( int id,  String codename,  String? name,  String? description)  simpleUser,required TResult Function( int id,  String codename,  String? name,  String? description)  videoSurveillance,required TResult Function( int id,  String? codename,  String? name,  String? description)  unknown,}) {final _that = this;
switch (_that) {
case Administrator():
return admin(_that.id,_that.codename,_that.name,_that.description);case SomeRandom():
return someRandom(_that.id,_that.codename,_that.name,_that.description);case AiChat():
return aichat(_that.id,_that.codename,_that.name,_that.description);case CanCreateUser():
return canCreateUser(_that.id,_that.codename,_that.name,_that.description);case CanCreateProject():
return canCreateProject(_that.id,_that.codename,_that.name,_that.description);case CarOrderAdmin():
return carOrderAdmin(_that.id,_that.codename,_that.name,_that.description);case KeycloakCarOrderUserPermission():
return keycloakCarOrderUser(_that.id,_that.codename,_that.name,_that.description);case EmployeeManager():
return employeeManager(_that.id,_that.codename,_that.name,_that.description);case Guest():
return guest(_that.id,_that.codename,_that.name,_that.description);case ShootingOrderAdmin():
return shootingOrderAdmin(_that.id,_that.codename,_that.name,_that.description);case ShootingOrderUser():
return shootingOrderUser(_that.id,_that.codename,_that.name,_that.description);case SignViewAllDocuments():
return signViewAllDocuments(_that.id,_that.codename,_that.name,_that.description);case SignViewOwnDocuments():
return signViewOwnDocuments(_that.id,_that.codename,_that.name,_that.description);case SimpleUser():
return simpleUser(_that.id,_that.codename,_that.name,_that.description);case VideoSurveillance():
return videoSurveillance(_that.id,_that.codename,_that.name,_that.description);case UnknownPermission():
return unknown(_that.id,_that.codename,_that.name,_that.description);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id,  String codename,  String? name,  String? description)?  admin,TResult? Function( int id,  String codename,  String? name,  String? description)?  someRandom,TResult? Function( int id,  String codename,  String? name,  String? description)?  aichat,TResult? Function( int id,  String codename,  String? name,  String? description)?  canCreateUser,TResult? Function( int id,  String codename,  String? name,  String? description)?  canCreateProject,TResult? Function( int id,  String codename,  String? name,  String? description)?  carOrderAdmin,TResult? Function( int id,  String codename,  String? name,  String? description)?  keycloakCarOrderUser,TResult? Function( int id,  String codename,  String? name,  String? description)?  employeeManager,TResult? Function( int id,  String codename,  String? name,  String? description)?  guest,TResult? Function( int id,  String codename,  String? name,  String? description)?  shootingOrderAdmin,TResult? Function( int id,  String codename,  String? name,  String? description)?  shootingOrderUser,TResult? Function( int id,  String codename,  String? name,  String? description)?  signViewAllDocuments,TResult? Function( int id,  String codename,  String? name,  String? description)?  signViewOwnDocuments,TResult? Function( int id,  String codename,  String? name,  String? description)?  simpleUser,TResult? Function( int id,  String codename,  String? name,  String? description)?  videoSurveillance,TResult? Function( int id,  String? codename,  String? name,  String? description)?  unknown,}) {final _that = this;
switch (_that) {
case Administrator() when admin != null:
return admin(_that.id,_that.codename,_that.name,_that.description);case SomeRandom() when someRandom != null:
return someRandom(_that.id,_that.codename,_that.name,_that.description);case AiChat() when aichat != null:
return aichat(_that.id,_that.codename,_that.name,_that.description);case CanCreateUser() when canCreateUser != null:
return canCreateUser(_that.id,_that.codename,_that.name,_that.description);case CanCreateProject() when canCreateProject != null:
return canCreateProject(_that.id,_that.codename,_that.name,_that.description);case CarOrderAdmin() when carOrderAdmin != null:
return carOrderAdmin(_that.id,_that.codename,_that.name,_that.description);case KeycloakCarOrderUserPermission() when keycloakCarOrderUser != null:
return keycloakCarOrderUser(_that.id,_that.codename,_that.name,_that.description);case EmployeeManager() when employeeManager != null:
return employeeManager(_that.id,_that.codename,_that.name,_that.description);case Guest() when guest != null:
return guest(_that.id,_that.codename,_that.name,_that.description);case ShootingOrderAdmin() when shootingOrderAdmin != null:
return shootingOrderAdmin(_that.id,_that.codename,_that.name,_that.description);case ShootingOrderUser() when shootingOrderUser != null:
return shootingOrderUser(_that.id,_that.codename,_that.name,_that.description);case SignViewAllDocuments() when signViewAllDocuments != null:
return signViewAllDocuments(_that.id,_that.codename,_that.name,_that.description);case SignViewOwnDocuments() when signViewOwnDocuments != null:
return signViewOwnDocuments(_that.id,_that.codename,_that.name,_that.description);case SimpleUser() when simpleUser != null:
return simpleUser(_that.id,_that.codename,_that.name,_that.description);case VideoSurveillance() when videoSurveillance != null:
return videoSurveillance(_that.id,_that.codename,_that.name,_that.description);case UnknownPermission() when unknown != null:
return unknown(_that.id,_that.codename,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class Administrator extends UserPermissionModel {
  const Administrator({required this.id, required this.codename, this.name, this.description}): super._();
  factory Administrator.fromJson(Map<String, dynamic> json) => _$AdministratorFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdministratorCopyWith<Administrator> get copyWith => _$AdministratorCopyWithImpl<Administrator>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdministratorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Administrator&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.admin(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $AdministratorCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $AdministratorCopyWith(Administrator value, $Res Function(Administrator) _then) = _$AdministratorCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$AdministratorCopyWithImpl<$Res>
    implements $AdministratorCopyWith<$Res> {
  _$AdministratorCopyWithImpl(this._self, this._then);

  final Administrator _self;
  final $Res Function(Administrator) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(Administrator(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SomeRandom extends UserPermissionModel {
  const SomeRandom({required this.id, required this.codename, this.name, this.description}): super._();
  factory SomeRandom.fromJson(Map<String, dynamic> json) => _$SomeRandomFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SomeRandomCopyWith<SomeRandom> get copyWith => _$SomeRandomCopyWithImpl<SomeRandom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SomeRandomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SomeRandom&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.someRandom(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $SomeRandomCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $SomeRandomCopyWith(SomeRandom value, $Res Function(SomeRandom) _then) = _$SomeRandomCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$SomeRandomCopyWithImpl<$Res>
    implements $SomeRandomCopyWith<$Res> {
  _$SomeRandomCopyWithImpl(this._self, this._then);

  final SomeRandom _self;
  final $Res Function(SomeRandom) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(SomeRandom(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class AiChat extends UserPermissionModel {
  const AiChat({required this.id, required this.codename, this.name, this.description}): super._();
  factory AiChat.fromJson(Map<String, dynamic> json) => _$AiChatFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiChatCopyWith<AiChat> get copyWith => _$AiChatCopyWithImpl<AiChat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiChatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiChat&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.aichat(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $AiChatCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $AiChatCopyWith(AiChat value, $Res Function(AiChat) _then) = _$AiChatCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$AiChatCopyWithImpl<$Res>
    implements $AiChatCopyWith<$Res> {
  _$AiChatCopyWithImpl(this._self, this._then);

  final AiChat _self;
  final $Res Function(AiChat) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(AiChat(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class CanCreateUser extends UserPermissionModel {
  const CanCreateUser({required this.id, required this.codename, this.name, this.description}): super._();
  factory CanCreateUser.fromJson(Map<String, dynamic> json) => _$CanCreateUserFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CanCreateUserCopyWith<CanCreateUser> get copyWith => _$CanCreateUserCopyWithImpl<CanCreateUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CanCreateUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CanCreateUser&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.canCreateUser(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $CanCreateUserCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $CanCreateUserCopyWith(CanCreateUser value, $Res Function(CanCreateUser) _then) = _$CanCreateUserCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$CanCreateUserCopyWithImpl<$Res>
    implements $CanCreateUserCopyWith<$Res> {
  _$CanCreateUserCopyWithImpl(this._self, this._then);

  final CanCreateUser _self;
  final $Res Function(CanCreateUser) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(CanCreateUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class CanCreateProject extends UserPermissionModel {
  const CanCreateProject({required this.id, required this.codename, this.name, this.description}): super._();
  factory CanCreateProject.fromJson(Map<String, dynamic> json) => _$CanCreateProjectFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CanCreateProjectCopyWith<CanCreateProject> get copyWith => _$CanCreateProjectCopyWithImpl<CanCreateProject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CanCreateProjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CanCreateProject&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.canCreateProject(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $CanCreateProjectCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $CanCreateProjectCopyWith(CanCreateProject value, $Res Function(CanCreateProject) _then) = _$CanCreateProjectCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$CanCreateProjectCopyWithImpl<$Res>
    implements $CanCreateProjectCopyWith<$Res> {
  _$CanCreateProjectCopyWithImpl(this._self, this._then);

  final CanCreateProject _self;
  final $Res Function(CanCreateProject) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(CanCreateProject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class CarOrderAdmin extends UserPermissionModel {
  const CarOrderAdmin({required this.id, required this.codename, this.name, this.description}): super._();
  factory CarOrderAdmin.fromJson(Map<String, dynamic> json) => _$CarOrderAdminFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarOrderAdminCopyWith<CarOrderAdmin> get copyWith => _$CarOrderAdminCopyWithImpl<CarOrderAdmin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarOrderAdminToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarOrderAdmin&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.carOrderAdmin(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $CarOrderAdminCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $CarOrderAdminCopyWith(CarOrderAdmin value, $Res Function(CarOrderAdmin) _then) = _$CarOrderAdminCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$CarOrderAdminCopyWithImpl<$Res>
    implements $CarOrderAdminCopyWith<$Res> {
  _$CarOrderAdminCopyWithImpl(this._self, this._then);

  final CarOrderAdmin _self;
  final $Res Function(CarOrderAdmin) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(CarOrderAdmin(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class KeycloakCarOrderUserPermission extends UserPermissionModel {
  const KeycloakCarOrderUserPermission({required this.id, required this.codename, this.name, this.description}): super._();
  factory KeycloakCarOrderUserPermission.fromJson(Map<String, dynamic> json) => _$KeycloakCarOrderUserPermissionFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KeycloakCarOrderUserPermissionCopyWith<KeycloakCarOrderUserPermission> get copyWith => _$KeycloakCarOrderUserPermissionCopyWithImpl<KeycloakCarOrderUserPermission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KeycloakCarOrderUserPermissionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeycloakCarOrderUserPermission&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.keycloakCarOrderUser(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $KeycloakCarOrderUserPermissionCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $KeycloakCarOrderUserPermissionCopyWith(KeycloakCarOrderUserPermission value, $Res Function(KeycloakCarOrderUserPermission) _then) = _$KeycloakCarOrderUserPermissionCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$KeycloakCarOrderUserPermissionCopyWithImpl<$Res>
    implements $KeycloakCarOrderUserPermissionCopyWith<$Res> {
  _$KeycloakCarOrderUserPermissionCopyWithImpl(this._self, this._then);

  final KeycloakCarOrderUserPermission _self;
  final $Res Function(KeycloakCarOrderUserPermission) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(KeycloakCarOrderUserPermission(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class EmployeeManager extends UserPermissionModel {
  const EmployeeManager({required this.id, required this.codename, this.name, this.description}): super._();
  factory EmployeeManager.fromJson(Map<String, dynamic> json) => _$EmployeeManagerFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeManagerCopyWith<EmployeeManager> get copyWith => _$EmployeeManagerCopyWithImpl<EmployeeManager>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeManagerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeManager&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.employeeManager(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $EmployeeManagerCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $EmployeeManagerCopyWith(EmployeeManager value, $Res Function(EmployeeManager) _then) = _$EmployeeManagerCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$EmployeeManagerCopyWithImpl<$Res>
    implements $EmployeeManagerCopyWith<$Res> {
  _$EmployeeManagerCopyWithImpl(this._self, this._then);

  final EmployeeManager _self;
  final $Res Function(EmployeeManager) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(EmployeeManager(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class Guest extends UserPermissionModel {
  const Guest({required this.id, required this.codename, this.name, this.description}): super._();
  factory Guest.fromJson(Map<String, dynamic> json) => _$GuestFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuestCopyWith<Guest> get copyWith => _$GuestCopyWithImpl<Guest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Guest&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.guest(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $GuestCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $GuestCopyWith(Guest value, $Res Function(Guest) _then) = _$GuestCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$GuestCopyWithImpl<$Res>
    implements $GuestCopyWith<$Res> {
  _$GuestCopyWithImpl(this._self, this._then);

  final Guest _self;
  final $Res Function(Guest) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(Guest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ShootingOrderAdmin extends UserPermissionModel {
  const ShootingOrderAdmin({required this.id, required this.codename, this.name, this.description}): super._();
  factory ShootingOrderAdmin.fromJson(Map<String, dynamic> json) => _$ShootingOrderAdminFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShootingOrderAdminCopyWith<ShootingOrderAdmin> get copyWith => _$ShootingOrderAdminCopyWithImpl<ShootingOrderAdmin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShootingOrderAdminToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShootingOrderAdmin&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.shootingOrderAdmin(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $ShootingOrderAdminCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $ShootingOrderAdminCopyWith(ShootingOrderAdmin value, $Res Function(ShootingOrderAdmin) _then) = _$ShootingOrderAdminCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$ShootingOrderAdminCopyWithImpl<$Res>
    implements $ShootingOrderAdminCopyWith<$Res> {
  _$ShootingOrderAdminCopyWithImpl(this._self, this._then);

  final ShootingOrderAdmin _self;
  final $Res Function(ShootingOrderAdmin) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(ShootingOrderAdmin(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ShootingOrderUser extends UserPermissionModel {
  const ShootingOrderUser({required this.id, required this.codename, this.name, this.description}): super._();
  factory ShootingOrderUser.fromJson(Map<String, dynamic> json) => _$ShootingOrderUserFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShootingOrderUserCopyWith<ShootingOrderUser> get copyWith => _$ShootingOrderUserCopyWithImpl<ShootingOrderUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShootingOrderUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShootingOrderUser&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.shootingOrderUser(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $ShootingOrderUserCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $ShootingOrderUserCopyWith(ShootingOrderUser value, $Res Function(ShootingOrderUser) _then) = _$ShootingOrderUserCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$ShootingOrderUserCopyWithImpl<$Res>
    implements $ShootingOrderUserCopyWith<$Res> {
  _$ShootingOrderUserCopyWithImpl(this._self, this._then);

  final ShootingOrderUser _self;
  final $Res Function(ShootingOrderUser) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(ShootingOrderUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SignViewAllDocuments extends UserPermissionModel {
  const SignViewAllDocuments({required this.id, required this.codename, this.name, this.description}): super._();
  factory SignViewAllDocuments.fromJson(Map<String, dynamic> json) => _$SignViewAllDocumentsFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignViewAllDocumentsCopyWith<SignViewAllDocuments> get copyWith => _$SignViewAllDocumentsCopyWithImpl<SignViewAllDocuments>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignViewAllDocumentsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignViewAllDocuments&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.signViewAllDocuments(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $SignViewAllDocumentsCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $SignViewAllDocumentsCopyWith(SignViewAllDocuments value, $Res Function(SignViewAllDocuments) _then) = _$SignViewAllDocumentsCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$SignViewAllDocumentsCopyWithImpl<$Res>
    implements $SignViewAllDocumentsCopyWith<$Res> {
  _$SignViewAllDocumentsCopyWithImpl(this._self, this._then);

  final SignViewAllDocuments _self;
  final $Res Function(SignViewAllDocuments) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(SignViewAllDocuments(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SignViewOwnDocuments extends UserPermissionModel {
  const SignViewOwnDocuments({required this.id, required this.codename, this.name, this.description}): super._();
  factory SignViewOwnDocuments.fromJson(Map<String, dynamic> json) => _$SignViewOwnDocumentsFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignViewOwnDocumentsCopyWith<SignViewOwnDocuments> get copyWith => _$SignViewOwnDocumentsCopyWithImpl<SignViewOwnDocuments>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignViewOwnDocumentsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignViewOwnDocuments&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.signViewOwnDocuments(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $SignViewOwnDocumentsCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $SignViewOwnDocumentsCopyWith(SignViewOwnDocuments value, $Res Function(SignViewOwnDocuments) _then) = _$SignViewOwnDocumentsCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$SignViewOwnDocumentsCopyWithImpl<$Res>
    implements $SignViewOwnDocumentsCopyWith<$Res> {
  _$SignViewOwnDocumentsCopyWithImpl(this._self, this._then);

  final SignViewOwnDocuments _self;
  final $Res Function(SignViewOwnDocuments) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(SignViewOwnDocuments(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SimpleUser extends UserPermissionModel {
  const SimpleUser({required this.id, required this.codename, this.name, this.description}): super._();
  factory SimpleUser.fromJson(Map<String, dynamic> json) => _$SimpleUserFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimpleUserCopyWith<SimpleUser> get copyWith => _$SimpleUserCopyWithImpl<SimpleUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimpleUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimpleUser&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.simpleUser(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $SimpleUserCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $SimpleUserCopyWith(SimpleUser value, $Res Function(SimpleUser) _then) = _$SimpleUserCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$SimpleUserCopyWithImpl<$Res>
    implements $SimpleUserCopyWith<$Res> {
  _$SimpleUserCopyWithImpl(this._self, this._then);

  final SimpleUser _self;
  final $Res Function(SimpleUser) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(SimpleUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class VideoSurveillance extends UserPermissionModel {
  const VideoSurveillance({required this.id, required this.codename, this.name, this.description}): super._();
  factory VideoSurveillance.fromJson(Map<String, dynamic> json) => _$VideoSurveillanceFromJson(json);

@override final  int id;
@override final  String codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoSurveillanceCopyWith<VideoSurveillance> get copyWith => _$VideoSurveillanceCopyWithImpl<VideoSurveillance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoSurveillanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoSurveillance&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.videoSurveillance(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $VideoSurveillanceCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $VideoSurveillanceCopyWith(VideoSurveillance value, $Res Function(VideoSurveillance) _then) = _$VideoSurveillanceCopyWithImpl;
@override @useResult
$Res call({
 int id, String codename, String? name, String? description
});




}
/// @nodoc
class _$VideoSurveillanceCopyWithImpl<$Res>
    implements $VideoSurveillanceCopyWith<$Res> {
  _$VideoSurveillanceCopyWithImpl(this._self, this._then);

  final VideoSurveillance _self;
  final $Res Function(VideoSurveillance) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = null,Object? name = freezed,Object? description = freezed,}) {
  return _then(VideoSurveillance(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class UnknownPermission extends UserPermissionModel {
  const UnknownPermission({required this.id, this.codename, this.name, this.description}): super._();
  factory UnknownPermission.fromJson(Map<String, dynamic> json) => _$UnknownPermissionFromJson(json);

@override final  int id;
@override final  String? codename;
@override final  String? name;
@override final  String? description;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownPermissionCopyWith<UnknownPermission> get copyWith => _$UnknownPermissionCopyWithImpl<UnknownPermission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnknownPermissionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownPermission&&(identical(other.id, id) || other.id == id)&&(identical(other.codename, codename) || other.codename == codename)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codename,name,description);

@override
String toString() {
  return 'UserPermissionModel.unknown(id: $id, codename: $codename, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $UnknownPermissionCopyWith<$Res> implements $UserPermissionModelCopyWith<$Res> {
  factory $UnknownPermissionCopyWith(UnknownPermission value, $Res Function(UnknownPermission) _then) = _$UnknownPermissionCopyWithImpl;
@override @useResult
$Res call({
 int id, String? codename, String? name, String? description
});




}
/// @nodoc
class _$UnknownPermissionCopyWithImpl<$Res>
    implements $UnknownPermissionCopyWith<$Res> {
  _$UnknownPermissionCopyWithImpl(this._self, this._then);

  final UnknownPermission _self;
  final $Res Function(UnknownPermission) _then;

/// Create a copy of UserPermissionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codename = freezed,Object? name = freezed,Object? description = freezed,}) {
  return _then(UnknownPermission(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codename: freezed == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
