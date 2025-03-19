import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../routes/routes.dart';
import '../../../dashboard/dashboard.dart';
import '../../../task/task.dart';
import '../../home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text;
    context.read<TaskCubit>().searchTasks(query);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: RefreshIndicator(
        onRefresh: () => context.read<TaskCubit>().loadTasks(),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(title: Text('Index')),
            SliverPersistentHeader(
              delegate: HomeSearchBar(controller: _searchController),
            ),
            BlocBuilder<TaskCubit, TaskState>(
              builder: (context, state) {
                return state.maybeWhen(
                    loaded: (tasks, isSelectionMode) {
                      return _displayTaskList(
                        context,
                        tasks,
                        isSelectionMode,
                      );
                    },
                    orElse: () =>
                        const SliverFillRemaining(child: EmptyHomeScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _displayTaskList(
    BuildContext context,
    List<TaskEntity> tasks,
    bool isSelectionMode,
  ) {
    if (tasks.isEmpty) {
      return const SliverFillRemaining(child: EmptyHomeScreen());
    }
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final task = tasks[index];
          final taskModel = TaskModel.fromEntity(task);
          final isSelected = isSelectionMode;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GestureDetector(
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
                time: task.createdAt,
              ),
            ),
          );
        },
        childCount: tasks.length,
      ),
    );
  }
}
