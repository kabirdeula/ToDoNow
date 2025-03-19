import '../../task.dart';

class DeleteSelectedTasksUsecase {
  final TaskRepository _repository;

  DeleteSelectedTasksUsecase({TaskRepository? repository})
      : _repository = repository ?? TaskRepositoryImpl();

  Future<void> call(Set<String> selectedTaskIds) async =>
      _repository.deleteSelectedTasks(selectedTaskIds);
}
