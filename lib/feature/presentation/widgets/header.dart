import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_demo/config/routes/app_routes.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: const [
          Text(
            'Header',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_active),
          color: Colors.black,
          onPressed: () {
            context.push(AppRoutes.notification);
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
