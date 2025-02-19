import 'package:to_do_now/features/authentication/authentication.dart';

import 'di.dart';

void setupRepositoryInjection() {
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
}
