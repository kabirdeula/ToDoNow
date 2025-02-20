import 'package:flutter/material.dart';

import 'themes.dart';

class AppThemes {
  static ThemeData themeData = ThemeData(
    brightness: Brightness.dark,
    inputDecorationTheme: _inputDecorationTheme,
  );
}

final _inputDecorationTheme =
    AppInputDecorations.defaultConfig().buildInputDecorationTheme();
