import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:project_demo/config/routes/app_routes.dart';

class CustomDrawerNavigation extends StatelessWidget {
  const CustomDrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        child: Container(
          color: Colors.orange[100],
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text('L O G O', style: TextStyle(fontSize: 36)),
                ),
              ),

              // Home
              ListTile(
                leading: const Icon(LucideIcons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  context.go(AppRoutes.home);
                },
              ),

              // Settings
              ListTile(
                leading: const Icon(LucideIcons.settings),
                title: const Text('Setting'),
                onTap: () {
                  Navigator.pop(context);
                  context.go(AppRoutes.setting);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
