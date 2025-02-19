import 'package:flutter/material.dart';
import 'package:to_do_now/core/themes/themes.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final ButtonStyle style;

  const CustomElevatedButton._({
    required this.label,
    required this.onPressed,
    required this.style,
  });

  factory CustomElevatedButton.filled({
    required String label,
    VoidCallback? onPressed,
  }) {
    return CustomElevatedButton._(
      label: label,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF0F68EE),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );
  }

  factory CustomElevatedButton.outline({
    required String label,
    VoidCallback? onPressed,
  }) {
    return CustomElevatedButton._(
      label: label,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0xFF0F68EE),
        side: const BorderSide(color: Color(0xFF0F68EE), width: 2),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: onPressed,
      child: Text(label.toUpperCase(), style: AppTypography.button()),
    );
  }
}
