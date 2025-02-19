import 'package:flutter/material.dart';
import 'package:to_do_now/core/themes/themes.dart';
import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/routes/routes.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenPadding(
          child: Column(
            children: [
              const SizedBox(height: 32.0),
              Text("Welcome", style: AppTypography.headline1()),
              const SizedBox(height: 16.0),
              Text(
                "Please login to continue or create an account to continue",
                textAlign: TextAlign.center,
                style: AppTypography.bodyText1(),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: CustomElevatedButton.filled(
                  label: 'login',
                  onPressed: () => context.push(AppRoutes.login.path),
                ),
              ),
              const SizedBox(height: 8.0),
              SizedBox(
                width: double.infinity,
                child: CustomElevatedButton.outline(
                  label: 'create account',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
