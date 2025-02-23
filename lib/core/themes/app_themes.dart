import 'package:flutter/material.dart';

import 'themes.dart';

class AppThemes {
  static ThemeData themeData = ThemeData(
    brightness: Brightness.dark,
    inputDecorationTheme: _inputDecorationTheme,
    floatingActionButtonTheme: _floatingActionButtonTheme,
  );
}

final _inputDecorationTheme =
    AppInputDecorations.defaultConfig().buildInputDecorationTheme();

final _floatingActionButtonTheme = ButtonThemes.floatingActionButtonTheme;
