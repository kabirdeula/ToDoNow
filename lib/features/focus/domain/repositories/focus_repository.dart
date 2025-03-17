import '../../focus.dart';

abstract class FocusRepository {
  Future<void> startFocusSession(FocusSessionEntity session);
  Future<void> endFocusSession(String sessionId);
  List<FocusSessionEntity> getFocusSessions();
}
