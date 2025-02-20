import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<AuthResponse> login({required UserModel user}) async {
    return await sl<AuthService>().login(user: user);
  }

  @override
  Future googleLogin() async => await sl<AuthService>().loginWithGoogle();

  @override
  Future<AuthResponse> register({required UserModel user}) async {
    return await sl<AuthService>().register(user: user);
  }
}
