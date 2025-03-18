import '../../../user/user.dart';
import '../../authentication.dart';

class GoogleLoginUsecase {
  final AuthRepository _repository;

  GoogleLoginUsecase({AuthRepository? repository})
      : _repository = repository ?? AuthRepositoryImpl();

  Future<UserEntity?> call() async => _repository.googleLogin();
}
