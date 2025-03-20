import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dashboard/dashboard.dart';
import '../../../home/home.dart';
import '../../task.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        return state.maybeWhen(
          grouped: (groupedTask) {
            final entries = groupedTask.entries.toList();
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: entries.length,
              itemBuilder: (context, index) {
                final entry = entries[index];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(entry.key),
                    ),
                    ...entry.value.map(
                      (task) {
                        final taskModel = TaskModel.fromEntity(task);
                        return TaskListTile(
                          title: task.title,
                          isSelectionMode: false,
                          value: true,
                          id: '',
                          task: taskModel,
                          time: task.createdAt,
                        );
                      },
                    )
                  ],
                );
              },
            );
          },
          orElse: () => EmptyHomeScreen(),
        );
      },
    );
  }
}
