import '../../task.dart';

class DeleteTaskUsecase {
  final TaskRepository _repository;

  DeleteTaskUsecase({TaskRepository? repository})
      : _repository = repository ?? TaskRepositoryImpl();

  Future<void> call(String id) async => _repository.deleteTask(id);
}
