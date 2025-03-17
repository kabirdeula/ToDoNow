import '../../../user/user.dart';

abstract class AuthRepository {
  Future<UserEntity?> register(String email, String password);
  Future<UserEntity?> login(String email, String password);
  Future<void> googleLogin();
  Future<void> logout();
  Future<UserEntity?> getCurrentUser();
}
