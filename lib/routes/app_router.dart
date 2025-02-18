import 'package:to_do_now/features/onboarding/onboarding.dart';
import 'package:to_do_now/features/start/start.dart';

import 'routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.initial.path,
    routes: [
      GoRoute(
        path: AppRoutes.initial.path,
        name: AppRoutes.initial.name,
        builder: (context, index) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.start.path,
        name: AppRoutes.start.name,
        builder: (context, index) => const StartScreen(),
      ),
    ],
  );
}
