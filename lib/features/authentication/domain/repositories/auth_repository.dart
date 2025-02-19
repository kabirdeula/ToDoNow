import 'package:to_do_now/features/authentication/authentication.dart';

abstract class AuthRepository {
  Future<AuthResponse> login({required UserModel user});
  Future googleLogin();
}
