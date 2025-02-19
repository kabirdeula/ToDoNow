part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final bool isLoading;
  final bool isLoggedIn;
  final bool isObscureText;
  final String? uid;

  const AuthState({
    this.isLoading = false,
    this.isLoggedIn = false,
    this.isObscureText = true,
    this.uid,
  });

  factory AuthState.initial() => const AuthState();

  AuthState copyWith({
    bool? isLoading,
    bool? isLoggedIn,
    String? uid,
    bool? isObscureText,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      isObscureText: isObscureText ?? this.isObscureText,
      uid: uid ?? this.uid,
    );
  }

  @override
  List<Object?> get props => [isLoading, isLoggedIn, uid, isObscureText];
}
