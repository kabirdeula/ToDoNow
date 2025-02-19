import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class GoogleLoginUsecase {
  Future call() async => await sl<AuthRepository>().googleLogin();
}
