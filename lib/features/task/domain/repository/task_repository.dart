import 'package:to_do_now/features/task/task.dart';

abstract class TaskRepository {
  Future<void> addTask(TaskModel task);
  Future<List<TaskModel>> getTasks();
  Future<void> deleteTask(TaskModel task);
  Future<void> deleteSelectedTasks(Set<String> selectedTaskIds);
  Future<void> updateTask(TaskModel task);
}
