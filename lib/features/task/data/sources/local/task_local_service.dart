import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../task.dart';

class TaskLocalService {
  late final Future<Box<TaskModel>> _box;

  TaskLocalService() {
    _box = HiveUtil.openHiveBox<TaskModel>(HiveConstants.taskBox);
  }

  Future<void> addTask({required TaskModel task}) async {
    try {
      final box = await _box;
      await box.add(task);
    } catch (e) {
      log.e("(Task Service) Error saving task: $e");
    }
  }

  Future<void> saveTask({required TaskModel task}) async {
    try {
      final box = await _box;
      await box.put(task.id, task);
      log.i("(Task Local Service) Task saved successfully: ${task.id}");
    } catch (e) {
      log.e("(Task Local Service) Error saving task: $e");
    }
  }

  Future<List<TaskModel>> getTasks() async {
    try {
      final box = await _box;
      return box.values.toList();
    } catch (e) {
      log.e("(Task Local Service) Error getting tasks: $e");
      return [];
    }
  }

  Future<void> deleteTask(String id) async {
    try {
      final box = await _box;
      await box.delete(id);
      log.i("(Task Local Service) Task deleted successfully: $id");
    } catch (e) {
      log.e("(Task Local Service) Error deleting task: $e");
    }
  }

  Future<void> deleteSelectedTasks(
      {required Set<String> selectedTaskIds}) async {
    try {
      final box = await _box;
      final keysToDelete =
          box.keys.where((key) => selectedTaskIds.contains(key)).toList();

      await box.deleteAll(keysToDelete);
      log.i("(Task Service) Deleted selected tasks: $keysToDelete");
    } catch (e) {
      log.e("(Task Service) Error deleting selected tasks: $e");
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
