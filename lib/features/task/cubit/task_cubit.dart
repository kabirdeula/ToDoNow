import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di.dart';
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
    emit(TaskState.loading());
    try {
      final tasks = await _getTask.call();
      emit(TaskState.loaded(tasks: tasks));
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
}
