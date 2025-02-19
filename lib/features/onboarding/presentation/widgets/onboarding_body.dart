import 'package:flutter/material.dart';
import 'package:to_do_now/core/themes/themes.dart';

class OnboardingBody extends StatelessWidget {
  final String image;
  final String title;
  final String? description;

  const OnboardingBody({
    super.key,
    required this.image,
    required this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        spacing: 32,
        children: [
          Image.asset(image, height: 270),
          Text(title, style: AppTypography.headline1()),
          Text(
            description ?? '',
            textAlign: TextAlign.center,
            style: AppTypography.bodyText1(),
          ),
        ],
      ),
    );
  }
}
