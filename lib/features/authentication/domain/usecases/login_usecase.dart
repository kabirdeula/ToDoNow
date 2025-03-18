import '../../../../app/di.dart';
import '../../../user/user.dart';
import '../../authentication.dart';

class LoginUsecase {
  final AuthRepository _repository;

  LoginUsecase() : _repository = sl();

  Future<UserEntity?> call(String email, String password) async =>
      _repository.login(email, password);
}
