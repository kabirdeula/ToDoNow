import 'package:flutter/material.dart';

import 'package:to_do_now/core/constants/constants.dart';

import 'app_typography.dart';

/// A utility class for creating custom input decoration themes.
class AppInputDecorations {
  /// The border radius of the input field.
  final BorderRadius borderRadius;

  /// The padding inside the input field.
  final EdgeInsets contentPadding;

  /// The color used for error borders and styles.
  final Color errorColor;

  /// The background fill color of the input field.
  final Color fillColor;

  /// The color used for the focused border.
  final Color focusColor;

  /// The color of the placeholder text.
  final Color hintColor;

  /// Constructor for creating an [AppInputDecorations] instance.
  AppInputDecorations({
    this.borderRadius = const BorderRadius.all(Radius.circular(4.0)),
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
    this.errorColor = AppColors.error,
    this.fillColor = AppColors.inputBackground,
    this.focusColor = AppColors.line,
    this.hintColor = AppColors.placeholder,
  });

  /// Factory constructor for creating a default configuration.
  factory AppInputDecorations.defaultConfig() {
    return AppInputDecorations(
      borderRadius: BorderRadius.circular(4.0),
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      errorColor: Colors.red,
      fillColor: AppColors.inputBackground,
      focusColor: AppColors.line,
      hintColor: AppColors.placeholder,
    );
  }

  /// Builds the full input decoration theme.
  InputDecorationTheme buildInputDecorationTheme() {
    return InputDecorationTheme(
      contentPadding: contentPadding,
      border: _defaultBorder(),
      errorBorder: _errorBorder(),
      errorStyle: AppTypography.caption(color: errorColor),
      focusedBorder: _focusedBorder(),
      focusedErrorBorder: _errorBorder(),
      fillColor: fillColor,
      filled: true,
      hintStyle: AppTypography.caption(color: hintColor),
    );
  }

  /// Builds the default border for the input field.
  OutlineInputBorder _defaultBorder() {
    return OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide.none,
    );
  }

  /// Builds the error border for the input field.
  OutlineInputBorder _errorBorder() {
    return OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: errorColor, width: 1),
    );
  }

  /// Builds the focused border for the input field.
  OutlineInputBorder _focusedBorder() {
    return OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: focusColor, width: 1),
    );
  }
}
