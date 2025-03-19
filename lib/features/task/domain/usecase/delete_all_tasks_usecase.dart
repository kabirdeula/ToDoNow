import '../../task.dart';

class DeleteAllTasksUsecase {
  final TaskRepository _repository;

  DeleteAllTasksUsecase({TaskRepository? repository})
      : _repository = repository ?? TaskRepositoryImpl();

  Future<void> call() async => _repository.deleteAllTasks();
}
