import 'package:flutter/material.dart';
import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/routes/routes.dart';

class AuthSwitch extends StatelessWidget {
  final String authSwitchText;
  final String authSwitchAction;
  final String location;

  const AuthSwitch({
    super.key,
    required this.authSwitchText,
    required this.authSwitchAction,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(authSwitchText),
            CustomTextButton(
              onPressed: () => context.go(location),
              label: authSwitchAction.toUpperCase(),
            ),
          ],
        ),
      ),
    );
  }
}
