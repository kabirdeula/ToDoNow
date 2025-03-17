import '../../authentication.dart';

class GoogleLoginUsecase {
  final AuthRepository _repository;

  GoogleLoginUsecase({AuthRepository? repository})
      : _repository = repository ?? AuthRepositoryImpl();

  Future<void> call() async => _repository.googleLogin();
}
