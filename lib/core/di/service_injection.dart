import 'package:to_do_now/features/authentication/authentication.dart';

import 'di.dart';

void setupServiceInjection() {
  sl.registerSingleton<AuthService>(AuthService());
}
