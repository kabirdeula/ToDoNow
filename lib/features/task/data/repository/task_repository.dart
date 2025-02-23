import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/task/task.dart';

class TaskRepositoryImpl implements TaskRepository {
  @override
  Future<void> addTask(TaskModel task) async {
    await sl<TaskService>().addTask(task: task);
  }

  @override
  Future<List<TaskModel>> getTasks() async {
    return await sl<TaskService>().getTasks();
  }
}
