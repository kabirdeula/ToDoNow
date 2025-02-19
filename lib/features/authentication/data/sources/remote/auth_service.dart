import 'package:firebase_auth/firebase_auth.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<AuthResponse> login({required UserModel user}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );

      return AuthResponse(success: "User logged in successfully");
    } on FirebaseAuthException catch (e) {
      return _handleFirebaseAuthException(e);
    } catch (e) {
      return AuthResponse(error: e.toString());
    }
  }

  AuthResponse _handleFirebaseAuthException(FirebaseAuthException e) {
    String errorMessage;

    switch (e.code) {
      case 'user-not-found':
        errorMessage = "Wrong password provided for that user.";
        break;
      case 'wrong-password':
        errorMessage = "Wrong password provided for that user.";
        break;
      default:
        errorMessage = e.message ?? "Unknown error occurred";
    }

    return AuthResponse(error: errorMessage);
  }
}
