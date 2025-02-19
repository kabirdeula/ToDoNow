import 'package:flutter/material.dart';

class ScreenPadding extends StatelessWidget {
  final Widget? child;

  const ScreenPadding({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: child,
    );
  }
}
