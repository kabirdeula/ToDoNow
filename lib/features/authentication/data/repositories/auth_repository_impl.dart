import 'package:dartz/dartz.dart';

import '../../../../app/di.dart';
import '../../../../core/core.dart';
import '../../../user/user.dart';
import '../../authentication.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteService _remoteService;
  final AuthLocalService _localService;

  AuthRepositoryImpl()
      : _remoteService = sl(),
        _localService = sl();

  @override
  Future<UserEntity?> getCurrentUser() async {
    final cachedUser = await _localService.getCachedUser();
    return cachedUser?.toEntity();
  }

  @override
  Future<Either<AuthFailure, UserEntity?>> googleLogin() async {
    try {
      final userModel = await _remoteService.signInWithGoogle();

      return userModel.fold((failure) => Left(failure), (userModel) async {
        if (userModel != null) {
          await _localService.cacheUser(user: userModel);
          return Right(userModel.toEntity());
        }
        return Left(AuthFailure("User is null"));
      });
    } catch (e) {
      log.e("(Auth Repository) Error logging in with Google: $e");
      return Left(AuthFailure(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, UserEntity?>> login(
    String email,
    String password,
  ) async {
    final userModel = await _remoteService.signInWithEmail(email, password);

    return userModel.fold((failure) => Left(failure), (userModel) async {
      if (userModel != null) {
        await _localService.cacheUser(user: userModel);
        return Right(userModel.toEntity());
      }
      return Left(AuthFailure("User not found."));
    });
  }

  @override
  Future<void> logout() async {
    await _remoteService.signOut();
    await _localService.clearUser();
  }

  @override
  Future<Either<AuthFailure, UserEntity?>> register(
    String email,
    String password,
  ) async {
    final userModel = await _remoteService.signUpWithEmail(email, password);

    return userModel.fold((failure) => Left(failure), (userModel) async {
      if (userModel != null) {
        await _localService.cacheUser(user: userModel);
        return Right(userModel.toEntity());
      }
      return Left(AuthFailure("User not found."));
    });
  }
}
