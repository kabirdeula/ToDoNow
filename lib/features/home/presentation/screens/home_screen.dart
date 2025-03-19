import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../routes/routes.dart';
import '../../../dashboard/dashboard.dart';
import '../../../task/task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          // leading: Icon(Icons.menu),
          // title: Text('Hello'),
          // actions: [],
          ),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => EmptyHomeScreen(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (tasks, isSelectionMode) =>
                _displayTaskList(context, tasks, isSelectionMode),
            orElse: () => EmptyHomeScreen(),
          );
        },
      ),
    );
  }

  Widget _displayTaskList(
    BuildContext context,
    List<TaskEntity> tasks,
    bool isSelectionMode,
  ) {
    if (tasks.isEmpty) {
      return EmptyHomeScreen();
    }
    return RefreshIndicator(
      onRefresh: () => context.read<TaskCubit>().loadTasks(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final task = tasks[index];
            final taskModel = TaskModel.fromEntity(task);
            final isSelected = isSelectionMode;

            return GestureDetector(
              onLongPress: () =>
                  context.read<TaskCubit>().toggleSelection(task.id),
              onTap: () {
                if (isSelectionMode) {
                  context.read<TaskCubit>().toggleSelection(task.id);
                } else {
                  context.push(AppRoutes.taskScreen.path);
                }
              },
              child: TaskListTile(
                title: task.title,
                isSelectionMode: isSelectionMode,
                value: isSelected,
                id: task.id,
                task: taskModel,
              ),
            );
          },
        ),
      ),
    );
  }
}
