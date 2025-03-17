import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/utils/utils.dart';
import '../../../focus.dart';

class FocusRemoteService {
  final FirebaseFirestore _firestore;

  FocusRemoteService({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<void> saveSession(FocusSessionModel session) async {
    try {
      await _firestore
          .collection('focus_sessions')
          .doc(session.id)
          .set(session.toJson());
      log.i("(Focus Remote Service) Session saved successfully: ${session.id}");
    } catch (e) {
      log.e("(Focus Remote Service) Error saving session: $e");
    }
  }

  Future<List<FocusSessionModel>> fetchSessions() async {
    try {
      final snapshot = await _firestore.collection('focus_sessions').get();

      log.i("(Focus Remote Service) Fetched sessions successfully.");
      return snapshot.docs
          .map((doc) => FocusSessionModel.fromJson(doc.data()))
          .toList();
    } catch (e) {
      log.e("(Focus Remote Service) Failed to fetch sessions: $e");
      return [];
    }
  }
}
