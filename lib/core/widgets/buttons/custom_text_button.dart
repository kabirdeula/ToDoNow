import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const CustomTextButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label.toUpperCase(),
        style: TextStyle(fontSize: 16.0, color: Colors.white60),
      ),
    );
  }
}
