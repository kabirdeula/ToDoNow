import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/task/task.dart';

class TaskUsecase {
  Future<void> call({required TaskModel task}) async {
    return await sl<TaskRepository>().addTask(task);
  }
}
