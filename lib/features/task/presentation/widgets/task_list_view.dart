import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
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
                    ListTile(
                      title: Text(entry.key, style: AppTypography.headline3()),
                    ),
                    ...entry.value.map((task) => ListTile(
                          title: Text(task.title),
                          leading: Icon(Icons.task_alt),
                        ))
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
