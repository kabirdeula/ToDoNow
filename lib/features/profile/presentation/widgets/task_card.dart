import 'package:flutter/material.dart';

import '../../../../core/themes/themes.dart';

class TaskCard extends StatelessWidget {
  final String label;
  final int count;

  const TaskCard({super.key, required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        "$count $label",
        style: AppTypography.bodyText1(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
