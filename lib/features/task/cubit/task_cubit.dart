import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/core/utils/utils.dart';
import 'package:to_do_now/features/task/task.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  final TaskUsecase _usecase = sl<TaskUsecase>();

  TaskCubit() : super(TaskState.initial()) {
    loadTasks();
  }

  void addTask(TaskModel task) async {
    await _usecase.addTask(task: task);
    final updatedTasks = await _usecase.getTasks();
    emit(state.copyWith(tasks: updatedTasks));
    log.i("(Task Cubit) Task added successfully.\n$task");
  }

  void loadTasks() async {
    emit(state.copyWith(isLoading: true));
    try {
      final tasks = await _usecase.getTasks();
      emit(state.copyWith(isLoading: false, tasks: tasks));
      log.i("(Task Cubit) Tasks loaded successfully.");
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      log.e("(Task Cubit) Error getting tasks: $e");
    }
  }

  void toggleSelection(String taskId) {
    final newSelectedTasks = Set<String>.from(state.selectedTasks);
    if (newSelectedTasks.contains(taskId)) {
      newSelectedTasks.remove(taskId);
    } else {
      newSelectedTasks.add(taskId);
    }

    emit(state.copyWith(
      selectedTasks: newSelectedTasks,
      isSelectionMode: newSelectedTasks.isNotEmpty,
    ));
  }

  void clearSelection() {
    emit(state.copyWith(selectedTasks: {}, isSelectionMode: false));
  }

  void deleteSelectedTasks() {}
}
