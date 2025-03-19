import '../../task.dart';

class GetTaskUsecase {
  final TaskRepository _repository;

  GetTaskUsecase({TaskRepository? repository})
      : _repository = repository ?? TaskRepositoryImpl();

  Future<List<TaskEntity>> call() async => _repository.getTasks();
}
