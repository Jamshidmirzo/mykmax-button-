

import 'package:injectable/injectable.dart';
import 'package:kmax/core/constants/user_permission_constants.dart';
import 'package:kmax/features/main/data/model/user_permission_group/user_permission_group_model.dart';

@injectable
class UserPermissionDataSources {
  Future<List<UserPermissionGroupModel>> getPermissionGroups() async {
    final json = UserPermissionConstants.userPermissionGroupJson;
    final List<UserPermissionGroupModel> response = [];

    for (var group in json['results']) {
      response.add(
        UserPermissionGroupModel.fromJson(group),
      );
    }
    return response;
  }
}
