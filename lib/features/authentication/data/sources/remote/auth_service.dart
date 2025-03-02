import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:to_do_now/core/utils/utils.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

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

  Future<User?> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      return userCredential.user;
    } catch (e) {
      return null;
    }
  }

  Future<AuthResponse> register({required UserModel user}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );

      log.i("(Auth Service) User registered successfully.");
      return AuthResponse(success: "User registered successfully.");
    } on FirebaseAuthException catch (e) {
      return _handleFirebaseAuthException(e);
    } catch (e) {
      return AuthResponse(error: e.toString());
    }
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }

  Future<void> setupFirebaseAuthPersistence() async {
    await FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
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
      case 'weak-password':
        errorMessage = "The password provided is too weak";
        break;
      case 'email-already-in-use':
        errorMessage = "The account already exists for that email";
        break;
      default:
        errorMessage = e.message ?? "Unknown error occurred";
    }

    log.e("(Auth Service) Error: $errorMessage");
    return AuthResponse(error: errorMessage);
  }
}
