import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/di.dart';
import 'core/themes/themes.dart';
import 'features/authentication/authentication.dart';
import 'features/onboarding/onboarding.dart';
import 'firebase_options.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  setupDependencyInjection();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => sl<OnboardingCubit>()),
      BlocProvider(create: (context) => sl<AuthCubit>()),
    ],
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
