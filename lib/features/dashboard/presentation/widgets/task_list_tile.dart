import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_now/core/utils/utils.dart';
import 'package:to_do_now/features/task/task.dart';

class TaskListTile extends StatelessWidget {
  final String title;
  final DateTime? time;
  final bool isSelectionMode;
  final bool value;
  final String id;
  final TaskModel task;

  const TaskListTile({
    super.key,
    required this.title,
    this.time,
    required this.isSelectionMode,
    required this.value,
    required this.id,
    required this.task,
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
          isSelectionMode
              ? Checkbox(
                  value: value,
                  onChanged: (_) =>
                      context.read<TaskCubit>().toggleSelection(id),
                )
              : PopupMenuButton<String>(
                  onSelected: (value) {
                    switch (value) {
                      case 'select':
                        context.read<TaskCubit>().toggleSelection(id);
                        break;
                      case 'delete':
                        context.read<TaskCubit>().deleteTask(task);
                        break;
                    }
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(value: 'select', child: Text('Select')),
                    PopupMenuItem(value: 'delete', child: Text('Delete')),
                  ],
                  icon: Icon(Icons.more_vert),
                )
        ],
      ),
    );
  }
}
