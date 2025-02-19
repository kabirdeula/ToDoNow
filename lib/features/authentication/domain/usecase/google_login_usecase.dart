import 'package:firebase_auth/firebase_auth.dart';
import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class GoogleLoginUsecase {
  Future<User?> call() async => await sl<AuthRepository>().googleLogin();
}
