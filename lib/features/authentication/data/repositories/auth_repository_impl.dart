import 'package:to_do_now/features/user/domain/entities/user_entity.dart';

import '../../authentication.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  UserEntity? getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<void> googleLogin() {
    // TODO: implement googleLogin
    throw UnimplementedError();
  }

  @override
  Future<UserEntity?> login(UserEntity user) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> register(UserEntity user) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
