import 'package:flutter/material.dart';

import 'core/themes/themes.dart';
import 'routes/routes.dart';

void main() => runApp(const MyApp());

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
