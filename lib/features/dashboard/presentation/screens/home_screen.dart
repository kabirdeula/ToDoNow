import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_now/features/dashboard/dashboard.dart';
import 'package:to_do_now/features/task/task.dart';
import 'package:to_do_now/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Hello'),
        actions: [
          BlocBuilder<TaskCubit, TaskState>(
            builder: (context, state) {
              if (state.selectedTasks.isEmpty) {
                return SizedBox.shrink();
              } else {
                return IconButton(
                  onPressed: () {
                    context.read<TaskCubit>().deleteSelectedTasks();
                  },
                  icon: Icon(Icons.delete),
                );
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(child: Icon(Icons.person)),
          ),
        ],
      ),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          if (state.tasks.isEmpty) {
            return EmptyHomeScreen();
          }

          return RefreshIndicator(
            onRefresh: () {
              context.read<TaskCubit>().loadTasks();
              return Future.delayed(const Duration(seconds: 1));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                itemCount: state.tasks.length,
                itemBuilder: (context, index) {
                  final task = state.tasks[index];
                  final isSelected = state.selectedTasks.contains(task.id);

                  return GestureDetector(
                    onLongPress: () =>
                        context.read<TaskCubit>().toggleSelection(task.id!),
                    onTap: () {
                      if (state.isSelectionMode) {
                        context.read<TaskCubit>().toggleSelection(task.id!);
                      } else {
                        context.push(AppRoutes.taskScreen.path);
                      }
                    },
                    child: TaskListTile(
                      title: state.tasks[index].title,
                      time: state.tasks[index].dueDateTime,
                      isSelectionMode: state.isSelectionMode,
                      value: isSelected,
                      id: task.id!,
                      task: task,
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
