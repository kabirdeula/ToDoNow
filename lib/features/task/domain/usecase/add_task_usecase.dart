import '../../task.dart';

class AddTaskUsecase {
  final TaskRepository _repository;

  AddTaskUsecase({TaskRepository? repository})
      : _repository = repository ?? TaskRepositoryImpl();

  Future<void> call(TaskEntity task) async => _repository.addTask(task);
}
