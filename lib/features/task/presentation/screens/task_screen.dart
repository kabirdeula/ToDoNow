import 'package:flutter/material.dart';
import 'package:to_do_now/core/themes/app_typography.dart';
import 'package:to_do_now/routes/routes.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.0,
          children: [
            editField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 8.0,
                  children: [
                    Icon(Icons.timer_outlined),
                    Text("Task Time:"),
                  ],
                ),
                Text("Today")
              ],
            ),
            
          ],
        ),
      ),
    );
  }

  Row editField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.0,
          children: [
            Text("Test", style: AppTypography.headline3()),
            Text("Test", style: AppTypography.bodyText1()),
          ],
        ),
        Icon(Icons.edit)
      ],
    );
  }
}
