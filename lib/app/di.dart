import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../core/core.dart';
import '../features/authentication/authentication.dart';
import '../features/dashboard/dashboard.dart';
import '../features/onboarding/onboarding.dart';
import '../features/task/task.dart';

final sl = GetIt.instance;

void setupDependencyInjection() {
  setupServiceInjection();
  setupRepositoryInjection();
  setupUsecaseInjection();
  setupCubitInjection();
}

void setupCubitInjection() {
  sl.registerSingleton<PasswordVisibilityCubit>(PasswordVisibilityCubit());
  sl.registerSingleton<OnboardingCubit>(OnboardingCubit());
  sl.registerSingleton<AuthCubit>(AuthCubit());
  sl.registerSingleton<DashboardCubit>(DashboardCubit());
  sl.registerSingleton<TaskCubit>(TaskCubit());
}

void setupRepositoryInjection() {
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(),
  );
}

void setupServiceInjection() {
  sl.registerLazySingleton<FirebaseAuth>(
    () => FirebaseAuth.instance,
  );

  sl.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );

  sl.registerLazySingleton<GoogleSignIn>(
    () => GoogleSignIn(),
  );

  sl.registerLazySingleton<AuthRemoteService>(
    () => AuthRemoteService(),
  );

  sl.registerLazySingleton<AuthLocalService>(
    () => AuthLocalService(),
  );
}

void setupUsecaseInjection() {
  sl.registerLazySingleton<GetCurrentUserUsecase>(
    () => GetCurrentUserUsecase(),
  );

  sl.registerLazySingleton<GoogleLoginUsecase>(
    () => GoogleLoginUsecase(),
  );

  sl.registerLazySingleton<LoginUsecase>(
    () => LoginUsecase(),
  );

  sl.registerLazySingleton<LogoutUsecase>(
    () => LogoutUsecase(),
  );

  sl.registerLazySingleton<RegisterUsecase>(
    () => RegisterUsecase(),
  );
}
