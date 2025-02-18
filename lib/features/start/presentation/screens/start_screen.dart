import 'package:flutter/material.dart';
import 'package:to_do_now/core/widgets/widgets.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 32.0),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              Text(
                "Please login to continue or create an account to continue",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: CustomElevatedButton.filled(
                  label: 'login',
                  onPressed: () {},
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
