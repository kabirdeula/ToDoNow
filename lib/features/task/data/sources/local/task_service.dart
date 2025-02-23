import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_now/core/utils/utils.dart';
import 'package:to_do_now/features/task/task.dart';

class TaskService {
  late final Future<Box<TaskModel>> _box;

  TaskService() {
    _box = HiveUtil.openHiveBox<TaskModel>('tasks');
  }

  Future<void> addTask(TaskModel task) async {
    try {
      final box = await _box;
      await box.add(task);
    } catch (e) {
      log.e("(Task Service): Error saving task: $e");
    }
  }
}
