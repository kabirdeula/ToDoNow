import '../../focus.dart';

class FocusRepositoryImpl implements FocusRepository {
  final FocusLocalService _localService;
  final FocusRemoteService _remoteService;

  FocusRepositoryImpl({
    FocusLocalService? localService,
    FocusRemoteService? remoteService,
  })  : _localService = localService ?? FocusLocalService(),
        _remoteService = remoteService ?? FocusRemoteService();

  @override
  Future<List<FocusSessionEntity>> getSessions() async {
    final localSessions = await _localService.getSessions();
    if (localSessions.isNotEmpty) {
      return localSessions.map((session) => session.toEntity()).toList();
    }

    final remoteSessions = await _remoteService.fetchSessions();
    for (var session in remoteSessions) {
      await _localService.saveSession(session);
    }

    return remoteSessions.map((session) => session.toEntity()).toList();
  }

  @override
  Future<void> saveSession(FocusSessionEntity session) async {
    final sessionModel = FocusSessionModel.fromEntity(session);
    await _localService.saveSession(sessionModel);
    await _remoteService.saveSession(sessionModel);
  }
}
