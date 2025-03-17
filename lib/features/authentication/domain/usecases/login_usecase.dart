import '../../../user/user.dart';
import '../../authentication.dart';

class LoginUsecase {
  final AuthRepository _repository;

  LoginUsecase({AuthRepository? repository})
      : _repository = repository ?? AuthRepositoryImpl();

  Future<UserEntity?> call(String email, String password) async =>
      _repository.login(email, password);
}
