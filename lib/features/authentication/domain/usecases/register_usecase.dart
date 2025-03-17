import '../../../user/user.dart';
import '../../authentication.dart';

class RegisterUsecase {
  final AuthRepository _repository;

  RegisterUsecase({AuthRepository? repository})
      : _repository = repository ?? AuthRepositoryImpl();

  Future<UserEntity?> call(String email, String password) async =>
      _repository.register(email, password);
}
