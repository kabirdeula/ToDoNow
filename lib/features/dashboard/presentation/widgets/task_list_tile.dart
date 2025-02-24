import 'package:flutter/material.dart';
import 'package:to_do_now/core/utils/utils.dart';

class TaskListTile extends StatelessWidget {
  final String title;
  final DateTime? time;
  final Widget? trailing;

  const TaskListTile({
    super.key,
    required this.title,
    this.time,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: EdgeInsets.only(bottom: 8.0),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.white10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(formatDateTime(time ?? DateTime.now())),
            ],
          ),
          trailing ??
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert_outlined),
              ),
        ],
      ),
    );
  }
}
