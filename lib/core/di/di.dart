import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'package:to_do_now/features/authentication/authentication.dart';
import 'package:to_do_now/features/onboarding/onboarding.dart';
import 'package:to_do_now/features/settings/settings.dart';
import 'package:to_do_now/features/task/task.dart';

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
  sl.registerSingleton<TaskCubit>(TaskCubit());
}

void setupRepositoryInjection() {
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<TaskRepository>(TaskRepositoryImpl());
}

void setupServiceInjection() async {
  sl.registerSingleton<AuthService>(AuthService());
  sl.registerSingleton<SettingsService>(SettingsService());
  sl.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  sl.registerSingleton<TaskService>(TaskService());
}

void setupUsecaseInjection() {
  sl.registerSingleton<LoginUsecase>(LoginUsecase());
  sl.registerSingleton<GoogleLoginUsecase>(GoogleLoginUsecase());
  sl.registerSingleton<RegisterUsecase>(RegisterUsecase());
  sl.registerSingleton<TaskUsecase>(TaskUsecase());
}
