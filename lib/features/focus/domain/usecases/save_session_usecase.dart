import '../../focus.dart';

class SaveSessionUsecase {
  final FocusRepository _repository;

  SaveSessionUsecase({
    FocusRepository? repository,
  }) : _repository = repository ?? FocusRepositoryImpl();

  Future<void> call(FocusSessionEntity session) async =>
      _repository.saveSession(session);
}
