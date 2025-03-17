import '../../authentication.dart';

class LogoutUsecase {
  final AuthRepository _repository;

  LogoutUsecase({AuthRepository? repository})
      : _repository = repository ?? AuthRepositoryImpl();

  Future<void> call() async => _repository.logout();
}
