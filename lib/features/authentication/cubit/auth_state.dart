import 'package:freezed_annotation/freezed_annotation.dart';

import '../../user/user.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(UserEntity user) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error(String error) = _Error;
}

// part of 'auth_cubit.dart';

// class AuthState extends Equatable {
//   final bool isObscureText;

//   const AuthState({
//     this.isObscureText = true,
//   });

//   factory AuthState.initial() => const AuthState();

//   AuthState copyWith({
//     bool? isObscureText,
//   }) {
//     return AuthState(
//       isObscureText: isObscureText ?? this.isObscureText,
//     );
//   }

//   @override
//   List<Object?> get props => [isObscureText];
// }
