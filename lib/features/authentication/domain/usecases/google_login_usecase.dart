import '../../../../app/di.dart';
import '../../../user/user.dart';
import '../../authentication.dart';

class GoogleLoginUsecase {
  final AuthRepository _repository;

  GoogleLoginUsecase() : _repository = sl();

  Future<UserEntity?> call() async => _repository.googleLogin();
}
