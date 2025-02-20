import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:to_do_now/core/themes/app_typography.dart';
import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class AuthScreen extends StatelessWidget {
  final String title;
  final List<Widget> authenticationFields;
  final String authSwitchText;
  final String authSwitchAction;
  final String location;
  final GlobalKey<FormBuilderState> formKey;

  const AuthScreen({
    super.key,
    required this.title,
    required this.authenticationFields,
    required this.authSwitchText,
    required this.authSwitchAction,
    required this.location,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(),
      body: ScreenPadding(
        child: AutofillGroup(
          child: FormBuilder(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
    );
  }
}
