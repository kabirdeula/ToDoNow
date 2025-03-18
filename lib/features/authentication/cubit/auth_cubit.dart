import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di.dart';
import '../authentication.dart';

class AuthCubit extends Cubit<AuthState> {
  final GetCurrentUserUsecase _getCurrentUser;
  final GoogleLoginUsecase _googleLogin;
  final LoginUsecase _login;
  final LogoutUsecase _logout;
  final RegisterUsecase _register;

  AuthCubit()
      : _getCurrentUser = sl(),
        _googleLogin = sl(),
        _login = sl(),
        _logout = sl(),
        _register = sl(),
        super(AuthState.initial());

  Future<void> checkAuthStatus() async {
    final user = await _getCurrentUser();
    if (user != null) {
      emit(AuthState.authenticated(user));
    } else {
      emit(AuthState.unauthenticated());
    }
  }

  Future<void> login(String email, String password) async {
    emit(const AuthState.loading());
    try {
      final user = await _login(email, password);
      if (user != null) {
        emit(AuthState.authenticated(user));
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> register(String email, String password) async {
    emit(const AuthState.loading());
    try {
      final user = await _register(email, password);
      if (user != null) {
        emit(AuthState.authenticated(user));
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> googleSignIn() async {
    emit(const AuthState.loading());
    try {
      final user = await _googleLogin();
      if (user != null) {
        emit(AuthState.authenticated(user));
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> logout() async {
    await _logout();
    emit(AuthState.unauthenticated());
  }
}
