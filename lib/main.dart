import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/di.dart';
import 'core/themes/themes.dart';
import 'features/onboarding/onboarding.dart';
import 'routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupDependencyInjection();

  runApp(MultiBlocProvider(
    providers: [BlocProvider(create: (context) => sl<OnboardingCubit>())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: AppThemes.themeData,
    );
  }
}
