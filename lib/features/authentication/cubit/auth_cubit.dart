import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  void checkUserStatus() async {}

  void toggleObscureText() {
    emit(state.copyWith(isObscureText: !state.isObscureText));
  }

  void login({required UserModel user}) async {
    emit(state.copyWith(isLoading: true));
    try {
      final result = await sl<LoginUsecase>().call(user: user);
      if (result.error != null) {
        emit(state.copyWith(isLoading: false, isLoggedIn: false));
      } else {
        emit(state.copyWith(isLoading: false, isLoggedIn: true));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, isLoggedIn: false));
    }
  }

  Future<void> googleLogin() async {
    emit(state.copyWith(isLoading: true));
    try {
      final user = await sl<GoogleLoginUsecase>().call();
      if (user != null) {
        emit(state.copyWith(isLoading: false, isLoggedIn: true));
      } else {
        emit(state.copyWith(isLoading: false, isLoggedIn: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, isLoggedIn: false));
    }
  }
}
