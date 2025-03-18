import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../../user/user.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, UserEntity?>> register(
      String email, String password);
  Future<Either<AuthFailure, UserEntity?>> login(String email, String password);
  Future<Either<AuthFailure, UserEntity?>> googleLogin();
  Future<void> logout();
  Future<UserEntity?> getCurrentUser();
}
