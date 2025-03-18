import '../../../../app/di.dart';
import '../../../user/user.dart';
import '../../authentication.dart';

class GetCurrentUserUsecase {
  final AuthRepository _repository;

  GetCurrentUserUsecase() : _repository = sl();

  Future<UserEntity?> call() async => _repository.getCurrentUser();
}
