part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final bool isLoading;
  final bool isLoggedIn;
  final bool isObscureText;
  final String? error;

  const AuthState({
    this.isLoading = false,
    this.isLoggedIn = false,
    this.isObscureText = true,
    this.error,
  });

  factory AuthState.initial() => const AuthState();

  AuthState copyWith({
    bool? isLoading,
    bool? isLoggedIn,
    bool? isObscureText,
    String? error,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      isObscureText: isObscureText ?? this.isObscureText,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [isLoading, isLoggedIn, isObscureText, error];
}
