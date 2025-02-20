import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class RegisterUsecase {
  Future<AuthResponse> call({required UserModel user}) async {
    return await sl<AuthRepository>().register(user: user);
  }
}
