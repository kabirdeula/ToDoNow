import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../core/core.dart';
import '../../authentication.dart';

class AuthScreen extends StatelessWidget {
  final String title;
  final String authSwitchText;
  final String authSwitchAction;
  final String location;
  final GlobalKey<FormBuilderState> formKey;
  final List<Widget> authenticationFields;

  const AuthScreen({
    super.key,
    required this.title,
    required this.authSwitchText,
    required this.authSwitchAction,
    required this.location,
    required this.formKey,
    required this.authenticationFields,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ScreenPadding(
          child: AutofillGroup(
            child: FormBuilder(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24.0),
                  Text(title, style: AppTypography.headline1()),
                  const SizedBox(height: 32.0),
                  ...authenticationFields,
                  OrDivider(),
                  const SizedBox(height: 32.0),
                  SocialLoginButtons(),
                  const SizedBox(height: 16.0),
                  AuthSwitch(
                    authSwitchText: authSwitchText,
                    authSwitchAction: authSwitchAction,
                    location: location,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
