import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_demo/config/routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Splash')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Splash Screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text('Welcome to the App!', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                context.go(AppRoutes.home);
              },
              child: Text(
                'Home',
                style: TextStyle(fontSize: 16, color: Colors.orange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
