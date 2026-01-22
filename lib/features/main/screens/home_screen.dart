import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kmax/core/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HOME')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go(AppRoutes.homeDetail);
          },
          child: Text('DETAIL'),
        ),
      ),
    );
  }
}
