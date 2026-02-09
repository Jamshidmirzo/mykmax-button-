// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_permission_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
UserPermissionGroupModel _$UserPermissionGroupModelFromJson(
  Map<String, dynamic> json
) {
        switch (json['codename']) {
                  case 'superadmin':
          return SuperAdmin.fromJson(
            json
          );
                case 'user':
          return User.fromJson(
            json
          );
                case 'hr':
          return HR.fromJson(
            json
          );
                case 'shooting_car_order_admin':
          return ShootingCarOrderAdmin.fromJson(
            json
          );
                case 'shooting_car_order_user':
          return ShootingCarOrderUser.fromJson(
            json
          );
        
          default:
            return Unknown.fromJson(
  json
);
        }
      
}

/// @nodoc
mixin _$UserPermissionGroupModel {

 int get id; String get name; String get codename; List<UserPermissionModel>? get permissions;
/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPermissionGroupModelCopyWith<UserPermissionGroupModel> get copyWith => _$UserPermissionGroupModelCopyWithImpl<UserPermissionGroupModel>(this as UserPermissionGroupModel, _$identity);

  /// Serializes this UserPermissionGroupModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPermissionGroupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.codename, codename) || other.codename == codename)&&const DeepCollectionEquality().equals(other.permissions, permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,codename,const DeepCollectionEquality().hash(permissions));

@override
String toString() {
  return 'UserPermissionGroupModel(id: $id, name: $name, codename: $codename, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $UserPermissionGroupModelCopyWith<$Res>  {
  factory $UserPermissionGroupModelCopyWith(UserPermissionGroupModel value, $Res Function(UserPermissionGroupModel) _then) = _$UserPermissionGroupModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String codename, List<UserPermissionModel> permissions
});




}
/// @nodoc
class _$UserPermissionGroupModelCopyWithImpl<$Res>
    implements $UserPermissionGroupModelCopyWith<$Res> {
  _$UserPermissionGroupModelCopyWithImpl(this._self, this._then);

  final UserPermissionGroupModel _self;
  final $Res Function(UserPermissionGroupModel) _then;

/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? codename = null,Object? permissions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self.permissions! : permissions // ignore: cast_nullable_to_non_nullable
as List<UserPermissionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPermissionGroupModel].
extension UserPermissionGroupModelPatterns on UserPermissionGroupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SuperAdmin value)?  superAdmin,TResult Function( User value)?  user,TResult Function( HR value)?  hr,TResult Function( ShootingCarOrderAdmin value)?  shootingCarOrderAdmin,TResult Function( ShootingCarOrderUser value)?  shootingCarOrderUser,TResult Function( Unknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SuperAdmin() when superAdmin != null:
return superAdmin(_that);case User() when user != null:
return user(_that);case HR() when hr != null:
return hr(_that);case ShootingCarOrderAdmin() when shootingCarOrderAdmin != null:
return shootingCarOrderAdmin(_that);case ShootingCarOrderUser() when shootingCarOrderUser != null:
return shootingCarOrderUser(_that);case Unknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SuperAdmin value)  superAdmin,required TResult Function( User value)  user,required TResult Function( HR value)  hr,required TResult Function( ShootingCarOrderAdmin value)  shootingCarOrderAdmin,required TResult Function( ShootingCarOrderUser value)  shootingCarOrderUser,required TResult Function( Unknown value)  unknown,}){
final _that = this;
switch (_that) {
case SuperAdmin():
return superAdmin(_that);case User():
return user(_that);case HR():
return hr(_that);case ShootingCarOrderAdmin():
return shootingCarOrderAdmin(_that);case ShootingCarOrderUser():
return shootingCarOrderUser(_that);case Unknown():
return unknown(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SuperAdmin value)?  superAdmin,TResult? Function( User value)?  user,TResult? Function( HR value)?  hr,TResult? Function( ShootingCarOrderAdmin value)?  shootingCarOrderAdmin,TResult? Function( ShootingCarOrderUser value)?  shootingCarOrderUser,TResult? Function( Unknown value)?  unknown,}){
final _that = this;
switch (_that) {
case SuperAdmin() when superAdmin != null:
return superAdmin(_that);case User() when user != null:
return user(_that);case HR() when hr != null:
return hr(_that);case ShootingCarOrderAdmin() when shootingCarOrderAdmin != null:
return shootingCarOrderAdmin(_that);case ShootingCarOrderUser() when shootingCarOrderUser != null:
return shootingCarOrderUser(_that);case Unknown() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id,  String name,  String codename,  List<UserPermissionModel> permissions)?  superAdmin,TResult Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)?  user,TResult Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)?  hr,TResult Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)?  shootingCarOrderAdmin,TResult Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)?  shootingCarOrderUser,TResult Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SuperAdmin() when superAdmin != null:
return superAdmin(_that.id,_that.name,_that.codename,_that.permissions);case User() when user != null:
return user(_that.id,_that.name,_that.codename,_that.permissions);case HR() when hr != null:
return hr(_that.id,_that.name,_that.codename,_that.permissions);case ShootingCarOrderAdmin() when shootingCarOrderAdmin != null:
return shootingCarOrderAdmin(_that.id,_that.name,_that.codename,_that.permissions);case ShootingCarOrderUser() when shootingCarOrderUser != null:
return shootingCarOrderUser(_that.id,_that.name,_that.codename,_that.permissions);case Unknown() when unknown != null:
return unknown(_that.id,_that.name,_that.codename,_that.permissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id,  String name,  String codename,  List<UserPermissionModel> permissions)  superAdmin,required TResult Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)  user,required TResult Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)  hr,required TResult Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)  shootingCarOrderAdmin,required TResult Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)  shootingCarOrderUser,required TResult Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)  unknown,}) {final _that = this;
switch (_that) {
case SuperAdmin():
return superAdmin(_that.id,_that.name,_that.codename,_that.permissions);case User():
return user(_that.id,_that.name,_that.codename,_that.permissions);case HR():
return hr(_that.id,_that.name,_that.codename,_that.permissions);case ShootingCarOrderAdmin():
return shootingCarOrderAdmin(_that.id,_that.name,_that.codename,_that.permissions);case ShootingCarOrderUser():
return shootingCarOrderUser(_that.id,_that.name,_that.codename,_that.permissions);case Unknown():
return unknown(_that.id,_that.name,_that.codename,_that.permissions);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id,  String name,  String codename,  List<UserPermissionModel> permissions)?  superAdmin,TResult? Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)?  user,TResult? Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)?  hr,TResult? Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)?  shootingCarOrderAdmin,TResult? Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)?  shootingCarOrderUser,TResult? Function( int id,  String name,  String codename,  List<UserPermissionModel>? permissions)?  unknown,}) {final _that = this;
switch (_that) {
case SuperAdmin() when superAdmin != null:
return superAdmin(_that.id,_that.name,_that.codename,_that.permissions);case User() when user != null:
return user(_that.id,_that.name,_that.codename,_that.permissions);case HR() when hr != null:
return hr(_that.id,_that.name,_that.codename,_that.permissions);case ShootingCarOrderAdmin() when shootingCarOrderAdmin != null:
return shootingCarOrderAdmin(_that.id,_that.name,_that.codename,_that.permissions);case ShootingCarOrderUser() when shootingCarOrderUser != null:
return shootingCarOrderUser(_that.id,_that.name,_that.codename,_that.permissions);case Unknown() when unknown != null:
return unknown(_that.id,_that.name,_that.codename,_that.permissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class SuperAdmin extends UserPermissionGroupModel {
  const SuperAdmin({required this.id, required this.name, required this.codename, final  List<UserPermissionModel> permissions = const []}): _permissions = permissions,super._();
  factory SuperAdmin.fromJson(Map<String, dynamic> json) => _$SuperAdminFromJson(json);

@override final  int id;
@override final  String name;
@override final  String codename;
 final  List<UserPermissionModel> _permissions;
@override@JsonKey() List<UserPermissionModel> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}


/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuperAdminCopyWith<SuperAdmin> get copyWith => _$SuperAdminCopyWithImpl<SuperAdmin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SuperAdminToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuperAdmin&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.codename, codename) || other.codename == codename)&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,codename,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'UserPermissionGroupModel.superAdmin(id: $id, name: $name, codename: $codename, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $SuperAdminCopyWith<$Res> implements $UserPermissionGroupModelCopyWith<$Res> {
  factory $SuperAdminCopyWith(SuperAdmin value, $Res Function(SuperAdmin) _then) = _$SuperAdminCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String codename, List<UserPermissionModel> permissions
});




}
/// @nodoc
class _$SuperAdminCopyWithImpl<$Res>
    implements $SuperAdminCopyWith<$Res> {
  _$SuperAdminCopyWithImpl(this._self, this._then);

  final SuperAdmin _self;
  final $Res Function(SuperAdmin) _then;

/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? codename = null,Object? permissions = null,}) {
  return _then(SuperAdmin(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<UserPermissionModel>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class User extends UserPermissionGroupModel {
  const User({required this.id, required this.name, required this.codename, final  List<UserPermissionModel>? permissions}): _permissions = permissions,super._();
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  int id;
@override final  String name;
@override final  String codename;
 final  List<UserPermissionModel>? _permissions;
@override List<UserPermissionModel>? get permissions {
  final value = _permissions;
  if (value == null) return null;
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.codename, codename) || other.codename == codename)&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,codename,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'UserPermissionGroupModel.user(id: $id, name: $name, codename: $codename, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> implements $UserPermissionGroupModelCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String codename, List<UserPermissionModel>? permissions
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? codename = null,Object? permissions = freezed,}) {
  return _then(User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,permissions: freezed == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<UserPermissionModel>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class HR extends UserPermissionGroupModel {
  const HR({required this.id, required this.name, required this.codename, final  List<UserPermissionModel>? permissions}): _permissions = permissions,super._();
  factory HR.fromJson(Map<String, dynamic> json) => _$HRFromJson(json);

@override final  int id;
@override final  String name;
@override final  String codename;
 final  List<UserPermissionModel>? _permissions;
@override List<UserPermissionModel>? get permissions {
  final value = _permissions;
  if (value == null) return null;
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HRCopyWith<HR> get copyWith => _$HRCopyWithImpl<HR>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HRToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HR&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.codename, codename) || other.codename == codename)&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,codename,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'UserPermissionGroupModel.hr(id: $id, name: $name, codename: $codename, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $HRCopyWith<$Res> implements $UserPermissionGroupModelCopyWith<$Res> {
  factory $HRCopyWith(HR value, $Res Function(HR) _then) = _$HRCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String codename, List<UserPermissionModel>? permissions
});




}
/// @nodoc
class _$HRCopyWithImpl<$Res>
    implements $HRCopyWith<$Res> {
  _$HRCopyWithImpl(this._self, this._then);

  final HR _self;
  final $Res Function(HR) _then;

/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? codename = null,Object? permissions = freezed,}) {
  return _then(HR(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,permissions: freezed == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<UserPermissionModel>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ShootingCarOrderAdmin extends UserPermissionGroupModel {
  const ShootingCarOrderAdmin({required this.id, required this.name, required this.codename, final  List<UserPermissionModel>? permissions}): _permissions = permissions,super._();
  factory ShootingCarOrderAdmin.fromJson(Map<String, dynamic> json) => _$ShootingCarOrderAdminFromJson(json);

@override final  int id;
@override final  String name;
@override final  String codename;
 final  List<UserPermissionModel>? _permissions;
@override List<UserPermissionModel>? get permissions {
  final value = _permissions;
  if (value == null) return null;
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShootingCarOrderAdminCopyWith<ShootingCarOrderAdmin> get copyWith => _$ShootingCarOrderAdminCopyWithImpl<ShootingCarOrderAdmin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShootingCarOrderAdminToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShootingCarOrderAdmin&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.codename, codename) || other.codename == codename)&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,codename,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'UserPermissionGroupModel.shootingCarOrderAdmin(id: $id, name: $name, codename: $codename, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $ShootingCarOrderAdminCopyWith<$Res> implements $UserPermissionGroupModelCopyWith<$Res> {
  factory $ShootingCarOrderAdminCopyWith(ShootingCarOrderAdmin value, $Res Function(ShootingCarOrderAdmin) _then) = _$ShootingCarOrderAdminCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String codename, List<UserPermissionModel>? permissions
});




}
/// @nodoc
class _$ShootingCarOrderAdminCopyWithImpl<$Res>
    implements $ShootingCarOrderAdminCopyWith<$Res> {
  _$ShootingCarOrderAdminCopyWithImpl(this._self, this._then);

  final ShootingCarOrderAdmin _self;
  final $Res Function(ShootingCarOrderAdmin) _then;

/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? codename = null,Object? permissions = freezed,}) {
  return _then(ShootingCarOrderAdmin(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,permissions: freezed == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<UserPermissionModel>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ShootingCarOrderUser extends UserPermissionGroupModel {
  const ShootingCarOrderUser({required this.id, required this.name, required this.codename, final  List<UserPermissionModel>? permissions}): _permissions = permissions,super._();
  factory ShootingCarOrderUser.fromJson(Map<String, dynamic> json) => _$ShootingCarOrderUserFromJson(json);

@override final  int id;
@override final  String name;
@override final  String codename;
 final  List<UserPermissionModel>? _permissions;
@override List<UserPermissionModel>? get permissions {
  final value = _permissions;
  if (value == null) return null;
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShootingCarOrderUserCopyWith<ShootingCarOrderUser> get copyWith => _$ShootingCarOrderUserCopyWithImpl<ShootingCarOrderUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShootingCarOrderUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShootingCarOrderUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.codename, codename) || other.codename == codename)&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,codename,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'UserPermissionGroupModel.shootingCarOrderUser(id: $id, name: $name, codename: $codename, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $ShootingCarOrderUserCopyWith<$Res> implements $UserPermissionGroupModelCopyWith<$Res> {
  factory $ShootingCarOrderUserCopyWith(ShootingCarOrderUser value, $Res Function(ShootingCarOrderUser) _then) = _$ShootingCarOrderUserCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String codename, List<UserPermissionModel>? permissions
});




}
/// @nodoc
class _$ShootingCarOrderUserCopyWithImpl<$Res>
    implements $ShootingCarOrderUserCopyWith<$Res> {
  _$ShootingCarOrderUserCopyWithImpl(this._self, this._then);

  final ShootingCarOrderUser _self;
  final $Res Function(ShootingCarOrderUser) _then;

/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? codename = null,Object? permissions = freezed,}) {
  return _then(ShootingCarOrderUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,permissions: freezed == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<UserPermissionModel>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class Unknown extends UserPermissionGroupModel {
  const Unknown({required this.id, required this.name, required this.codename, final  List<UserPermissionModel>? permissions}): _permissions = permissions,super._();
  factory Unknown.fromJson(Map<String, dynamic> json) => _$UnknownFromJson(json);

@override final  int id;
@override final  String name;
@override final  String codename;
 final  List<UserPermissionModel>? _permissions;
@override List<UserPermissionModel>? get permissions {
  final value = _permissions;
  if (value == null) return null;
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownCopyWith<Unknown> get copyWith => _$UnknownCopyWithImpl<Unknown>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnknownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unknown&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.codename, codename) || other.codename == codename)&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,codename,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'UserPermissionGroupModel.unknown(id: $id, name: $name, codename: $codename, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $UnknownCopyWith<$Res> implements $UserPermissionGroupModelCopyWith<$Res> {
  factory $UnknownCopyWith(Unknown value, $Res Function(Unknown) _then) = _$UnknownCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String codename, List<UserPermissionModel>? permissions
});




}
/// @nodoc
class _$UnknownCopyWithImpl<$Res>
    implements $UnknownCopyWith<$Res> {
  _$UnknownCopyWithImpl(this._self, this._then);

  final Unknown _self;
  final $Res Function(Unknown) _then;

/// Create a copy of UserPermissionGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? codename = null,Object? permissions = freezed,}) {
  return _then(Unknown(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,codename: null == codename ? _self.codename : codename // ignore: cast_nullable_to_non_nullable
as String,permissions: freezed == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<UserPermissionModel>?,
  ));
}


}

// dart format on
