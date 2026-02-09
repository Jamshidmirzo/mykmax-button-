import 'package:flutter/material.dart';
import 'package:kmax/core/router/router.dart';
import 'package:kmax/features/main/data/model/user_permission/user_permission_model.dart';

class PermissionTileWidget extends StatelessWidget {
    const PermissionTileWidget({super.key, 
    required this.model,
  });
  final UserPermissionModel model;



  @override
  Widget build(BuildContext context) {
    final isUnknown = model.type == UserPermissionCodename.unknown;
    final themeColor = isUnknown ? Colors.orange : Colors.blue;
    return GestureDetector(
      onTap: () {
        HomeDetailRoute(
          codename: model.codename ?? '',
        ).go(context);
      },
      child: Container(
        decoration: BoxDecoration(
          color: themeColor.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: themeColor.withValues(alpha: 0.2)),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          leading: CircleAvatar(
            backgroundColor: themeColor.withValues(alpha: 0.1),
            child: Icon(
              isUnknown ? Icons.help_outline : Icons.supervised_user_circle,
              color: themeColor,
            ),
          ),
          title: Text(
            model.name ?? 'Untitled',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                model.codename ?? 'No codename',
              ),
              if (model.description != null) ...[
                const SizedBox(height: 4),
                Text(
                  model.description ?? '',
                ),
              ],
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '#${model.id}',
                style: TextStyle(color: Colors.grey[400], fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
