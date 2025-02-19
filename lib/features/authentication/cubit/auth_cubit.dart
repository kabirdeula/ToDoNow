import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  void checkUserStatus() async {}

  void toggleObscureText() {
    emit(state.copyWith(isObscureText: !state.isObscureText));
  }
}
