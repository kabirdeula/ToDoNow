import '../../task.dart';

abstract class TaskRepository {
  Future<void> addTask(TaskModel task);
  Future<void> updateTask(TaskModel task);
  Future<void> deleteTask(TaskModel task);
  Future<void> deleteSelectedTasks(Set<String> selectedTaskIds);
  List<TaskModel> getTasks();
  TaskModel? getTaskById(String id);
}
