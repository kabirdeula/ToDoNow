import 'package:firebase_auth/firebase_auth.dart';
import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/authentication/authentication.dart';
import 'package:to_do_now/features/dashboard/dashboard.dart';
import 'package:to_do_now/features/onboarding/onboarding.dart';
import 'package:to_do_now/features/settings/settings.dart';
import 'package:to_do_now/features/start/start.dart';

import 'routes.dart';

class AppRouter {
  final settingsService = sl<SettingsService>();
  late bool isFirstTime;

  Future<void> initialize() async {
    isFirstTime = await settingsService.isFirstTimeUser();
  }

  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.initial.path,
    routes: [
      GoRoute(
          path: AppRoutes.initial.path,
          name: AppRoutes.initial.name,
          redirect: (context, state) async {
            final settingsService = sl<SettingsService>();
            final isFirstTimeUser = await settingsService.isFirstTimeUser();
            final user = FirebaseAuth.instance.currentUser;

            if (isFirstTimeUser) {
              return AppRoutes.onboarding.path;
            } else if (user != null) {
              return AppRoutes.dashboard.path;
            } else {
              return AppRoutes.login.path;
            }
          }),
      GoRoute(
        path: AppRoutes.onboarding.path,
        name: AppRoutes.onboarding.name,
        builder: (context, index) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.start.path,
        name: AppRoutes.start.name,
        builder: (context, index) => const StartScreen(),
      ),
      GoRoute(
        path: AppRoutes.login.path,
        name: AppRoutes.login.name,
        builder: (context, index) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.register.path,
        name: AppRoutes.register.name,
        builder: (context, index) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.dashboard.path,
        name: AppRoutes.dashboard.name,
        builder: (context, index) => const DashboardScreen(),
      ),
    ],
  );
}
