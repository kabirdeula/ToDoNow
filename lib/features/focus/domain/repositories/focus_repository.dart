import '../../focus.dart';

abstract class FocusRepository {
  Future<void> saveSession(FocusSessionEntity session);
  Future<List<FocusSessionEntity>> getSessions();
}
