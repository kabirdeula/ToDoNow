import 'package:to_do_now/features/onboarding/onboarding.dart';

import 'routes.dart';

class AppRouter {
  static final GoRouter router =
      GoRouter(initialLocation: AppRoutes.initial.path, routes: [
    GoRoute(
      path: AppRoutes.initial.path,
      name: AppRoutes.initial.name,
      builder: (context, index) => const OnboardingScreen(),
    ),
  ]);
}
