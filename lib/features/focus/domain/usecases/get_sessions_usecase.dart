import '../../focus.dart';

class GetSessionsUsecase {
  final FocusRepository _repository;

  GetSessionsUsecase({
    FocusRepository? repository,
  }) : _repository = repository ?? FocusRepositoryImpl();

  Future<List<FocusSessionEntity>> call() async => _repository.getSessions();
}
