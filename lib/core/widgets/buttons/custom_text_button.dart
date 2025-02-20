import 'package:flutter/material.dart';
import 'package:to_do_now/core/themes/themes.dart';

class CustomTextButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const CustomTextButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(label.toUpperCase(), style: AppTypography.button()),
    );
  }
}
