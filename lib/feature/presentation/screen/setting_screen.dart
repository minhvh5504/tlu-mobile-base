import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_demo/config/routes/app_routes.dart' show AppRoutes;

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black, size: 32),
            onPressed: () {
              context.go(AppRoutes.home);
            },
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Setting Screen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );
  }
}
