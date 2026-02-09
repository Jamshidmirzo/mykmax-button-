import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kmax/features/main/presentation/providers/user_permission_arg.dart';import 'package:kmax/features/main/presentation/providers/user_permission_provider.dart';

class DetailHomeScreen extends ConsumerWidget {
  final String codename;
  final String? groupCodename;
  final int? userId;

  const DetailHomeScreen({
    super.key,
    required this.codename,
    this.groupCodename,
    this.userId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasPermission = ref.watch(
      userPermissionProvider(
        UserPermissionArg(
          codename: codename,
          groupCodename: groupCodename,
          userId: userId,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail home'),
      ),
      body: Center(
        child: Text(
          'Permission: $codename\n'
          'Group: ${groupCodename ?? "All"}\n'
          'Has Permission: $hasPermission',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
