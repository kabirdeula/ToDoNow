import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_now/core/utils/utils.dart';
import 'package:to_do_now/features/task/task.dart';

class TaskService {
  late final Future<Box<TaskModel>> _box;

  TaskService() {
    _box = HiveUtil.openHiveBox<TaskModel>('tasks');
  }

  Future<void> addTask({required TaskModel task}) async {
    try {
      final box = await _box;
      await box.add(task);
    } catch (e) {
      log.e("(Task Service) Error saving task: $e");
    }
  }

  Future<List<TaskModel>> getTasks() async {
    try {
      final box = await _box;
      return box.values.toList();
    } catch (e) {
      log.e("(Task Service) Error getting tasks: $e");
      return [];
    }
  }

  Future<void> deleteTask({required TaskModel task}) async {
    try {
      final box = await _box;
      await box.delete(task.id!);
    } catch (e) {
      log.e("(Task Service) Error deleting task: $e");
    }
  }

  Future<void> deleteSelectedTasks() async {
    try {
      final box = await _box;
      final tasks = box.values.toList();
      await box.deleteAll(tasks.map((task) => task.id!).toList());
    } catch (e) {
      log.e("(Task Service) Error deleting selected tasks: $e");
    }
  }

  Future<void> updateTask({required TaskModel task}) async {
    try {
      final box = await _box;
      await box.put(task.id!, task);
    } catch (e) {
      log.e("(Task Service) Error updating task: $e");
    }
  }

  Future<void> deleteAllTasks() async {
    try {
      final box = await _box;
      await box.clear();
    } catch (e) {
      log.e("(Task Service) Error deleting all tasks: $e");
    }
  }

  Future<void> close() async {
    final box = await _box;
    await box.close();
  }
}
