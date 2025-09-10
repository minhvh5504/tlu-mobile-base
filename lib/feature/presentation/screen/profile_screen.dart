import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_demo/config/routes/app_routes.dart';
import 'package:project_demo/feature/presentation/widgets/header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Profile Screen',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                GestureDetector(
                  onTap: () {
                    context.go(AppRoutes.splash);
                  },
                  child: Text(
                    'Go to Splash Screen',
                    style: TextStyle(fontSize: 16, color: Colors.orange),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
