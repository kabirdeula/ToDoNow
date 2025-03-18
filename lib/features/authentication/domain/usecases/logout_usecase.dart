import '../../../../app/di.dart';
import '../../authentication.dart';

class LogoutUsecase {
  final AuthRepository _repository;

  LogoutUsecase() : _repository = sl();

  Future<void> call() async => _repository.logout();
}
