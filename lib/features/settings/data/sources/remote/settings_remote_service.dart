import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/core.dart';
import '../../../settings.dart';

class SettingsRemoteService {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  SettingsRemoteService({FirebaseAuth? auth, FirebaseFirestore? firestore})
      : _auth = auth ?? FirebaseAuth.instance,
        _firestore = firestore ?? FirebaseFirestore.instance;

  Future<void> saveSettings(AppSettingsModel settings) async {
    try {
      final userId = _auth.currentUser?.uid;
      if (userId != null) {
        await _firestore
            .collection('users')
            .doc(userId)
            .collection('settings')
            .doc('appSettings')
            .set(settings.toJson());
        log.i("(SettingsRemoteService) Settings saved remotely.");
      }
    } catch (e) {
      log.e("(SettingsRemoteService) Error saving settings remotely: $e");
    }
  }

  /// Fetches settings from Firestore.
  Future<AppSettingsModel?> fetchSettings() async {
    try {
      final userId = _auth.currentUser?.uid;
      if (userId != null) {
        final doc = await _firestore
            .collection('users')
            .doc(userId)
            .collection('settings')
            .doc('appSettings')
            .get();

        if (doc.exists) {
          return AppSettingsModel.fromJson(doc.data()!);
        }
      }
      return null;
    } catch (e) {
      log.e("(SettingsRemoteService) Error fetching settings: $e");
      return null;
    }
  }
}
