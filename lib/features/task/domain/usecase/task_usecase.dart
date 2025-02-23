import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/task/task.dart';

class TaskUsecase {
  Future<void> addTask({required TaskModel task}) async {
    await sl<TaskRepository>().addTask(task);
  }

  Future<List<TaskModel>> getTasks() async {
    return await sl<TaskRepository>().getTasks();
  }
}
