import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kmax/features/main/data/model/user_permission/user_permission_model.dart';
import 'package:kmax/features/main/presentation/providers/user_provider.dart';
import 'package:kmax/features/main/presentation/widgets/permission_tile_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final groups = ref.watch(userProvider);
    if (groups.isEmpty) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final allPermissions = groups
        .expand((group) => group.permissions ?? <UserPermissionModel>[])
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Permissions Control'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: allPermissions.length,
        separatorBuilder: (context, index) => const Divider(height: 24),
        itemBuilder: (context, index) {
          final permission = allPermissions[index];
          return PermissionTileWidget(
            model: permission,
          );
        },
      ),
    );
  }
}
