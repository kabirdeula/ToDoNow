import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<AuthResponse> login({required UserModel user}) async {
    var result = await sl<AuthService>().login(user: user);
    return result;
  }

  @override
  Future googleLogin() async => await sl<AuthService>().loginWithGoogle();
}
