import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/task/task.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskService _service = sl<TaskService>();

  @override
  Future<void> addTask(TaskModel task) async {
    await _service.addTask(task: task);
  }

  @override
  Future<List<TaskModel>> getTasks() async {
    return await _service.getTasks();
  }

  @override
  Future<void> deleteSelectedTasks(Set<String> selectedTaskIds) async {
    await _service.deleteSelectedTasks(selectedTaskIds: selectedTaskIds);
  }

  @override
  Future<void> deleteTask(TaskModel task) async {
    await _service.deleteTask(task: task);
  }

  @override
  Future<void> updateTask(TaskModel task) async {
    await _service.updateTask(task: task);
  }
}
