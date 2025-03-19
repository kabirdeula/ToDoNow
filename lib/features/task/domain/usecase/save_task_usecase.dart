import '../../task.dart';

class SaveTaskUsecase {
  final TaskRepository _repository;

  SaveTaskUsecase({TaskRepository? repository})
      : _repository = repository ?? TaskRepositoryImpl();

  Future<void> call(TaskEntity task) async => _repository.saveTask(task);
}
