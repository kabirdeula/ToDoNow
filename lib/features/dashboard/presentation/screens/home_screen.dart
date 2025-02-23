import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_now/features/dashboard/dashboard.dart';
import 'package:to_do_now/features/task/task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        if (state.tasks.isEmpty) {
          return EmptyHomeScreen();
        }

        return RefreshIndicator(
          onRefresh: () {
            context.read<TaskCubit>().loadTasks();
            return Future.delayed(const Duration(seconds: 1));
          },
          child: ListView.builder(
            itemCount: state.tasks.length,
            itemBuilder: (context, index) => Text(state.tasks[index].title),
          ),
        );
      },
    );
  }
}
