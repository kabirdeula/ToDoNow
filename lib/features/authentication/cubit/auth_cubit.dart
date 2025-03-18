import 'package:flutter_bloc/flutter_bloc.dart';

import '../authentication.dart';

class AuthCubit extends Cubit<AuthState> {
  final GetCurrentUserUsecase _getCurrentUser;
  final GoogleLoginUsecase _googleLogin;
  final LoginUsecase _login;
  final LogoutUsecase _logout;
  final RegisterUsecase _register;

  AuthCubit({
    GetCurrentUserUsecase? getCurrentUser,
    GoogleLoginUsecase? googleLogin,
    LoginUsecase? login,
    LogoutUsecase? logout,
    RegisterUsecase? register,
  })  : _getCurrentUser = getCurrentUser ?? GetCurrentUserUsecase(),
        _googleLogin = googleLogin ?? GoogleLoginUsecase(),
        _login = login ?? LoginUsecase(),
        _logout = logout ?? LogoutUsecase(),
        _register = register ?? RegisterUsecase(),
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
