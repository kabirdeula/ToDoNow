import 'package:flutter/material.dart';
import 'package:to_do_now/core/constants/constants.dart';
import 'package:to_do_now/core/themes/themes.dart';

class EmptyHomeScreen extends StatelessWidget {
  const EmptyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetPaths.home),
          Text(
            "What do you want to do today?",
            style: AppTypography.headline3(),
          ),
          Text("Tap + to add your tasks", style: AppTypography.bodyText1()),
        ],
      ),
    );
  }
}
