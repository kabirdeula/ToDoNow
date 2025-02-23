import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/task/task.dart';

class TaskUsecase {
  final TaskRepository _repository = sl<TaskRepository>();

  Future<void> addTask({required TaskModel task}) async {
    await _repository.addTask(task);
  }

  Future<List<TaskModel>> getTasks() async => await _repository.getTasks();

  Future<void> deleteTask({required TaskModel task}) async {
    await _repository.deleteTask(task);
  }

  Future<void> deleteSelectedTasks(Set<String> selectedTaskIds) async {
    await _repository.deleteSelectedTasks(selectedTaskIds);
  }

  Future<void> updateTask({required TaskModel task}) async {
    await _repository.updateTask(task);
  }
}
