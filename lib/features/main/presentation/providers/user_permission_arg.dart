
class UserPermissionArg {
  final String codename;
  final String? groupCodename;
  final int? userId;

  const UserPermissionArg({
    required this.codename,
    this.groupCodename,
    this.userId,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserPermissionArg &&
          runtimeType == other.runtimeType &&
          codename == other.codename &&
          groupCodename == other.groupCodename &&
          userId == other.userId;

  @override
  int get hashCode => codename.hashCode ^ groupCodename.hashCode ^ userId.hashCode;
}
