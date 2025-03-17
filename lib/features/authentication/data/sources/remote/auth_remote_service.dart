import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../user/user.dart';

class AuthRemoteService {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;

  AuthRemoteService({
    FirebaseAuth? firebaseAuth,
    FirebaseFirestore? firestore,
    GoogleSignIn? googleSignin,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _firestore = firestore ?? FirebaseFirestore.instance,
        _googleSignIn = googleSignin ?? GoogleSignIn();

  Future<UserModel?> signUpWithEmail(String email, String password) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credential.user;
      if (user == null) {
        log.w("(Auth Remote Service) User creation failed, user is null.");
        return null;
      }

      final userModel = UserModel(
        id: user.uid,
        email: user.email!,
        createdAt: DateTime.now(),
      );

      await _firestore
          .collection('users')
          .doc(userModel.id)
          .set(userModel.toJson());

      log.i(
          "(Auth Remote Service) User created successfully: ${userModel.id}.");
      return userModel;
    } on FirebaseAuthException catch (e) {
      return _handleFirebaseAuthException(e);
    } catch (e) {
      log.e("(Auth Remote Service) Error creating user: $e");
      return null;
    }
  }

  Future<UserModel?> signInWithEmail(String email, String password) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credential.user;
      if (user == null) {
        log.w("(Auth Remote Service) User login failed, user is null.");
        return null;
      }

      final doc = await _firestore.collection('users').doc(user.uid).get();

      if (doc.exists) {
        return UserModel.fromJson(doc.data()!);
      }
      return null;
    } on FirebaseAuthException catch (e) {
      return _handleFirebaseAuthException(e);
    } catch (e) {
      log.e("(Auth Remote Service) Error logging in user: $e");
      return null;
    }
  }

  Future<UserModel?> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) return null;

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);

      final user = userCredential.user;
      if (user == null) {
        log.w("(Auth Remote Service) User login failed, user is null.");
        return null;
      }

      final doc = await _firestore.collection('users').doc(user.uid).get();

      if (doc.exists) {
        return UserModel.fromJson(doc.data()!);
      }

      return null;
    } on FirebaseAuthException catch (e) {
      return _handleFirebaseAuthException(e);
    } catch (e) {
      log.e("(Auth Remote Service) Error logging in user: $e");
      return null;
    }
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }

  UserModel? _handleFirebaseAuthException(FirebaseAuthException e) {
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
    return null;
  }
}
