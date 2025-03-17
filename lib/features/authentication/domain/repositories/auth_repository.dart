import '../../../user/user.dart';

abstract class AuthRepository {
  Future<UserEntity> register(UserEntity user);
  Future<UserEntity?> login(UserEntity user);
  Future<void> googleLogin();
  Future<void> logout();
  UserEntity? getCurrentUser();
}
