import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'package:to_do_now/features/authentication/authentication.dart';
import 'package:to_do_now/features/onboarding/onboarding.dart';
import 'package:to_do_now/features/settings/settings.dart';

final sl = GetIt.instance;

void setupDependencyInjection() {
  setupCubitInjection();
  setupServiceInjection();
  setupRepositoryInjection();
  setupUsecaseInjection();
}

void setupCubitInjection() {
  sl.registerSingleton<OnboardingCubit>(OnboardingCubit());
  sl.registerSingleton<AuthCubit>(AuthCubit());
}

void setupRepositoryInjection() {
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
}

void setupServiceInjection() async {
  sl.registerSingleton<AuthService>(AuthService());
  sl.registerSingleton<SettingsService>(SettingsService());
  sl.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
}

void setupUsecaseInjection() {
  sl.registerSingleton<LoginUsecase>(LoginUsecase());
  sl.registerSingleton<GoogleLoginUsecase>(GoogleLoginUsecase());
  sl.registerSingleton<RegisterUsecase>(RegisterUsecase());
}
