import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/features/dashboard/dashboard.dart';
import 'package:to_do_now/features/task/task.dart';

class DashboardScreen extends StatelessWidget with DashboardMixin {
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: HomeScreen(),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () => createTask(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.access_time), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
