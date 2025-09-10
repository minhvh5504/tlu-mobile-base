import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_demo/config/routes/app_routes.dart';
import 'package:project_demo/feature/presentation/navigation/custom_bottom_navigation.dart';
import 'package:project_demo/feature/presentation/screen/booking_screen.dart';
import 'package:project_demo/feature/presentation/screen/favorite_screen.dart';
import 'package:project_demo/feature/presentation/screen/home_screen.dart';
import 'package:project_demo/feature/presentation/screen/notification_screen.dart';
import 'package:project_demo/feature/presentation/screen/profile_screen.dart';
import 'package:project_demo/feature/presentation/screen/setting_screen.dart';
import 'package:project_demo/feature/presentation/screen/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      // Route don't have nav bar
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),

      GoRoute(
        path: AppRoutes.notification,
        builder: (context, state) => const NotificationScreen(),
      ),

      GoRoute(
        path: AppRoutes.setting,
        builder: (context, state) => const SettingScreen(),
      ),

      // ShellRoute have nav bar
      ShellRoute(
        builder: (context, state, child) {
          int currentIndex = _getNavIndex(state.uri.path);
          return Scaffold(
            body: child,
            bottomNavigationBar: CustomBottomNavBar(initialIndex: currentIndex),
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.home,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: AppRoutes.favorite,
            builder: (context, state) => FavoriteScreen(),
          ),
          GoRoute(
            path: AppRoutes.booking,
            builder: (context, state) => const BookingScreen(),
          ),
          GoRoute(
            path: AppRoutes.profile,
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
    ],
  );
  static int _getNavIndex(String path) {
    if (path.startsWith(AppRoutes.favorite)) return 1;
    if (path.startsWith(AppRoutes.booking)) return 2;
    if (path.startsWith(AppRoutes.profile)) return 3;
    return 0;
  }
}
