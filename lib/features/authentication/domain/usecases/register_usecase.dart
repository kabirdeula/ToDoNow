import 'package:dartz/dartz.dart';

import '../../../../app/di.dart';
import '../../../../core/core.dart';
import '../../../user/user.dart';
import '../../authentication.dart';

class RegisterUsecase {
  final AuthRepository _repository;

  RegisterUsecase() : _repository = sl();

  Future<Either<AuthFailure, UserEntity?>> call(
          String email, String password) async =>
      _repository.register(email, password);
}
