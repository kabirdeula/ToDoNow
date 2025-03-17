import '../../task.dart';

abstract class TaskRepository {
  Future<void> addTask(TaskEntity task);
  Future<void> saveTask(TaskEntity task);
  Future<List<TaskEntity>> getTasks();
  Future<void> deleteTask(String id);
  Future<void> deleteSelectedTasks(Set<String> selectedTaskIds);
  Future<void> deleteAllTasks();
}
