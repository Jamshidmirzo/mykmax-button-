import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Future<bool> showDeleteDialog(BuildContext context) {
    final completer = Completer<bool>();
    // 1. Создай Completer<bool>
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('DELTEACCOUNT'),
          content: Row(
            children: [
              TextButton(
                onPressed: () {
                  if (!completer.isCompleted) {
                    completer.complete(true);
                  }
                  context.pop();
                },
                child: Text('YES'),
              ),
              TextButton(
                onPressed: () {
                  completer.complete(false);
                  context.pop();
                },
                child: Text('NO'),
              ),
            ],
          ),
        );
      },
    );
    return completer.future;

    // 2. Вызови showDialog

    // 3. В кнопке "ДА" -> complete(true)

    // 4. В кнопке "НЕТ" -> complete(false)

    // 5. Верни completer.future
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Completer practice')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await showDeleteDialog(context);

            // ignore: use_build_context_synchronously
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Result: $result'),
              ),
            );
          },
          child: const Text('Удалить аккаунт'),
        ),
      ),
    );
  }
}
