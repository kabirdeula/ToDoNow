import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/core.dart';
import '../../../focus.dart';

class FocusLocalService {
  late final Future<Box<FocusSessionModel>> _box;

  FocusLocalService() {
    _box =
        HiveUtil.openHiveBox<FocusSessionModel>(HiveConstants.focusSessionBox);
  }

  Future<void> saveSession(FocusSessionModel session) async {
    try {
      final box = await _box;
      await box.put(session.id, session);
      log.i("(Focus Local Service) Session saved successfully: ${session.id}");
    } catch (e) {
      log.e("(Focus Local Service) Error saving session: $e");
    }
  }

  Future<List<FocusSessionModel>> getSessions() async {
    try {
      final box = await _box;
      return box.values.toList();
    } catch (e) {
      log.e("(Focus Local Service) Error getting sessions: $e");
      return [];
    }
  }
}
