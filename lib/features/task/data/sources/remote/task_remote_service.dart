import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/utils/utils.dart';
import '../../../task.dart';

class TaskRemoteService {
  final FirebaseFirestore _firestore;

  TaskRemoteService({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<void> saveTask({required TaskModel task}) async {
    try {
      await _firestore.collection('tasks').doc(task.id).set(task.toJson());
      log.i("(Task Remote Service) Task saved successfully: ${task.id}");
    } catch (e) {
      log.e("(Task Remote Service) Error saving task: $e");
    }
  }

  Future<List<TaskModel>> fetchTasks() async {
    try {
      final snapshot = await _firestore.collection('tasks').get();

      log.i("(Task Remote Service) Fetched task successfully.");
      return snapshot.docs
          .map((doc) => TaskModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      log.e("(Task Remote Service) Failed to fetch tasks: $e");
      return [];
    }
  }

  Future<void> deleteTask(String id) async {
    try {
      await _firestore.collection('tasks').doc(id).delete();
      log.i("(Task Remote Service) Task deleted successfully: $id");
    } catch (e) {
      log.e("(Task Remote Service) Error deleting task: $e");
    }
  }

  Future<void> deleteSelectedTasks(Set<String> taskIds) async {
    try {
      final batch = _firestore.batch();
      final tasksCollection = _firestore.collection('tasks');

      for (String id in taskIds) {
        batch.delete(tasksCollection.doc(id));
      }

      await batch.commit();
      log.i("(Task Remote Service) Deleted selected tasks: $taskIds");
    } catch (e) {
      log.e("(Task Remote Service) Error deleting selected tasks: $e");
    }
  }

  Future<void> deleteAllTasks() async {
    try {
      final tasksCollection = _firestore.collection('tasks');
      final snapshot = await tasksCollection.get();

      for (var doc in snapshot.docs) {
        await doc.reference.delete();
      }

      log.i("(Task Remote Service) Deleted all tasks from Firestore");
    } catch (e) {
      log.e("(Task Remote Service) Error deleting all tasks: $e");
    }
  }
}
