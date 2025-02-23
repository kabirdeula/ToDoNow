import 'package:to_do_now/features/task/task.dart';

abstract class TaskRepository {
  Future<void> addTask(TaskModel task);
  Future<List<TaskModel>> getTasks();
}
