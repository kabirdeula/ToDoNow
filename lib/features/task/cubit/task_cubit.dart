import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di.dart';
import '../../../core/core.dart';
import '../task.dart';

class TaskCubit extends Cubit<TaskState> {
  final AddTaskUsecase _addTask;
  final DeleteAllTasksUsecase _deleteAllTask;
  final DeleteSelectedTasksUsecase _deleteSelectedTask;
  final DeleteTaskUsecase _deleteTask;
  final GetTaskUsecase _getTask;
  final SaveTaskUsecase _saveTask;

  final Set<String> _selectedTasks = {};

  TaskCubit()
      : _addTask = sl(),
        _deleteAllTask = sl(),
        _deleteSelectedTask = sl(),
        _deleteTask = sl(),
        _getTask = sl(),
        _saveTask = sl(),
        super(TaskState.initial()) {
    loadTasks();
  }

  Future<void> loadTasks() async {
    log.d("(Task Cubit) Task Loading");
    emit(TaskState.loading());
    try {
      final tasks = await _getTask.call();
      emit(TaskState.loaded(tasks: tasks));
      log.d("(Task Cubit) Task Loaded Successfully");
      groupTasks();
    } catch (e) {
      emit(TaskState.error(e.toString()));
    }
  }

  Future<void> addTask(TaskEntity task) async {
    await _addTask.call(task);
    loadTasks();
  }

  Future<void> saveTask(TaskEntity task) async {
    try {
      await _saveTask.call(task);
      loadTasks();
    } catch (e) {
      emit(TaskState.error(e.toString()));
    }
  }

  Future<void> deleteTask(String id) async {
    await _deleteTask(id);
    loadTasks();
  }

  Future<void> deleteAllTasks() async {
    try {
      await _deleteAllTask.call();
      emit(TaskState.loaded(tasks: []));
    } catch (e) {
      emit(TaskState.error(e.toString()));
    }
  }

  void toggleSelection(String taskId) {
    if (_selectedTasks.contains(taskId)) {
      _selectedTasks.remove(taskId);
    } else {
      _selectedTasks.add(taskId);
    }
    emit(_currentLoadedState());
  }

  void clearSelection() {
    _selectedTasks.clear();
    emit(_currentLoadedState());
  }

  void deleteSelectedTasks() async {
    if (_selectedTasks.isEmpty) return;

    try {
      await _deleteSelectedTask.call(_selectedTasks);
      _selectedTasks.clear();
      emit(_currentLoadedState());
    } catch (e) {
      emit(TaskState.error(e.toString()));
    }
  }

  TaskState _currentLoadedState() {
    return state.maybeWhen(
      loaded: (tasks, isSelectionMode) => TaskState.loaded(
        tasks: tasks,
        isSelectionMode: _selectedTasks.isNotEmpty,
      ),
      orElse: () => state,
    );
  }

  Future<void> searchTasks(String query) async {
    if (query.isEmpty) {
      await loadTasks();
    } else {
      state.maybeWhen(
        loaded: (tasks, isSelectionMode) async {
          final filteredTasks = tasks.where((task) {
            return task.title.toLowerCase().contains(query.toLowerCase());
          }).toList();
          emit(TaskState.loaded(tasks: filteredTasks));
        },
        orElse: () async => emit(TaskState.initial()),
      );
    }
  }

  Future<void> groupTasks() async {
    log.d("(Task Cubit) Grouping tasks...");
    state.maybeWhen(
      loaded: (tasks, isSelectionMode) async {
        log.d("(Task Cubit) Grouping tasks... ${tasks.length} tasks found.");
        final now = DateTime.now();
        final today = DateTime(now.year, now.month, now.day);
        final yesterday = today.subtract(Duration(days: 1));

        final Map<String, List<TaskEntity>> groupedTasks = {
          "Today": [],
          "Yesterday": [],
          "Upcoming": [],
          "Overdue": [],
          "Completed": []
        };

        for (var task in tasks) {
          if (task.completedAt != null) {
            groupedTasks["Completed"]!.add(task);
          } else if (task.createdAt.isAfter(today)) {
            groupedTasks["Today"]!.add(task);
          } else if (task.createdAt.isAfter(yesterday) &&
              task.createdAt.isBefore(today)) {
            groupedTasks["Yesterday"]!.add(task);
          } else if (task.dueDate != null && task.dueDate!.isAfter(now)) {
            groupedTasks["Upcoming"]!.add(task);
          } else if (task.dueDate != null && task.dueDate!.isBefore(now)) {
            groupedTasks["Overdue"]!.add(task);
          }
        }

        emit(TaskState.grouped(tasks: groupedTasks));
        log.d("(Task Cubit) Grouping tasks... done.");
      },
      orElse: () async {
        log.w("(Task Cubit) Failed grouping task");
        emit(TaskState.initial());
      },
    );
  }
}
