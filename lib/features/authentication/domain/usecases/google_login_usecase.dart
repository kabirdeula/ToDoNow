import 'package:dartz/dartz.dart';

import '../../../../app/di.dart';
import '../../../../core/core.dart';
import '../../../user/user.dart';
import '../../authentication.dart';

class GoogleLoginUsecase {
  final AuthRepository _repository;

  GoogleLoginUsecase() : _repository = sl();

  Future<Either<AuthFailure, UserEntity?>> call() async =>
      _repository.googleLogin();
}
