import 'package:flutter/material.dart';
import 'package:to_do_now/core/constants/constants.dart';

import 'themes.dart';

class AppThemes {
  static ThemeData themeData = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      onPrimary: Colors.white,
      onSurface: Colors.white,
    ),
    inputDecorationTheme: _inputDecorationTheme,
    floatingActionButtonTheme: _floatingActionButtonTheme,
  );
}

final _inputDecorationTheme =
    AppInputDecorations.defaultConfig().buildInputDecorationTheme();

final _floatingActionButtonTheme = ButtonThemes.floatingActionButtonTheme;
