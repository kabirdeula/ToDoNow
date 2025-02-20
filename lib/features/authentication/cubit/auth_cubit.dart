import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/core/utils/utils.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  void checkUserStatus() async {}

  void toggleObscureText() {
    emit(state.copyWith(isObscureText: !state.isObscureText));
    log.i("(Auth Cubit) isObscureText: ${state.isObscureText}");
  }

  void login({required UserModel user}) async {
    emit(state.copyWith(isLoading: true));
    try {
      final result = await sl<LoginUsecase>().call(user: user);
      if (result.error != null) {
        emit(state.copyWith(
          isLoading: false,
          isLoggedIn: false,
          error: result.error,
        ));
        log.e("(Auth Cubit) Login Error: ${result.error}");
      } else {
        emit(state.copyWith(isLoading: false, isLoggedIn: true));
        log.i("(Auth Cubit) User Logged in successfully.");
      }
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        isLoggedIn: false,
        error: e.toString(),
      ));
      log.e("(Auth Cubit) Failed to Login: ${e.toString()}");
    }
  }

  Future<void> googleLogin() async {
    emit(state.copyWith(isLoading: true));
    try {
      final user = await sl<GoogleLoginUsecase>().call();
      if (user != null) {
        emit(state.copyWith(isLoading: false, isLoggedIn: true));
        log.i("(Auth Cubit) User Logged in successfully.");
      } else {
        emit(state.copyWith(isLoading: false, isLoggedIn: false));
      }
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        isLoggedIn: false,
        error: e.toString(),
      ));
      log.e("(Auth Cubit) Failed to Login: ${e.toString()}");
    }
  }

  void register({required UserModel user}) async {
    emit(state.copyWith(isLoading: true));
    try {
      final result = await sl<RegisterUsecase>().call(user: user);
      if (result.error != null) {
        emit(state.copyWith(
          isLoading: true,
          isLoggedIn: false,
          error: result.error,
        ));
        log.e("(Auth Cubit) Register Error: ${result.error}");
      } else {
        emit(state.copyWith(isLoading: false, isLoggedIn: true));
        log.i("(Auth Cubit) User registered successfully.");
      }
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        isLoggedIn: false,
        error: e.toString(),
      ));
      log.e("(Auth Cubit) Failed to register: ${e.toString()}");
    }
  }
}
