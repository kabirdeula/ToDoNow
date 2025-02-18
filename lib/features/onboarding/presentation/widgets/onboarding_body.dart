import 'package:flutter/material.dart';

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
          Text(
            title,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            description ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }
}
