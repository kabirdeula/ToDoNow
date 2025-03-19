import 'package:dartz/dartz.dart';

import '../../../../app/di.dart';
import '../../../../core/core.dart';
import '../../../user/user.dart';
import '../../authentication.dart';

class LoginUsecase {
  final AuthRepository _repository;

  LoginUsecase() : _repository = sl();

  Future<Either<AuthFailure, UserEntity?>> call(
          String email, String password) async =>
      _repository.login(email, password);
}
