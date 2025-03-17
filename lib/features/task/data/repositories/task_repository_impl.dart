import 'package:to_do_now/features/task/task.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskLocalService _localService;
  final TaskRemoteService _remoteService;

  TaskRepositoryImpl({
    TaskLocalService? localService,
    TaskRemoteService? remoteService,
  })  : _localService = localService ?? TaskLocalService(),
        _remoteService = remoteService ?? TaskRemoteService();

  @override
  Future<void> addTask(TaskEntity task) async {
    final taskModel = TaskModel.fromEntity(task);
    await _localService.addTask(task: taskModel);
    await _remoteService.saveTask(task: taskModel);
  }

  @override
  Future<void> deleteAllTasks() async {
    await _localService.deleteAllTasks();
    await _remoteService.deleteAllTasks();
  }

  @override
  Future<void> deleteSelectedTasks(Set<String> selectedTaskIds) async {
    await _localService.deleteSelectedTasks(selectedTaskIds: selectedTaskIds);
    await _remoteService.deleteSelectedTasks(selectedTaskIds);
  }

  @override
  Future<void> deleteTask(String id) async {
    await _localService.deleteTask(id);
    await _remoteService.deleteTask(id);
  }

  @override
  Future<List<TaskEntity>> getTasks() async {
    final localTasks = await _localService.getTasks();
    if (localTasks.isNotEmpty) {
      return localTasks.map((task) => task.toEntity()).toList();
    }

    final remoteTasks = await _remoteService.fetchTasks();
    for (var task in remoteTasks) {
      await _localService.saveTask(task: task);
    }
    return remoteTasks.map((task) => task.toEntity()).toList();
  }

  @override
  Future<void> saveTask(TaskEntity task) async {
    final taskModel = TaskModel.fromEntity(task);
    await _localService.saveTask(task: taskModel);
    await _remoteService.saveTask(task: taskModel);
  }
}
