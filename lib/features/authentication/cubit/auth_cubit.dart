import 'package:equatable/equatable.dart';
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
      await sl<LoginUsecase>().call(user: user);
      emit(state.copyWith(isLoading: false, isLoggedIn: true));
    } catch (e) {
      emit(state.copyWith(isLoggedIn: false));
    }
  }
}
