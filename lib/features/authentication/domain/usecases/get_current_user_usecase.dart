import '../../../user/user.dart';
import '../../authentication.dart';

class GetCurrentUserUsecase {
  final AuthRepository _repository;

  GetCurrentUserUsecase({AuthRepository? repository})
      : _repository = repository ?? AuthRepositoryImpl();

  Future<UserEntity?> call() async => _repository.getCurrentUser();
}
