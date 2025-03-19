import '../../settings.dart';

class SyncSettingsWithRemoteUsecase {
  final SettingsRepository _repository;

  SyncSettingsWithRemoteUsecase({SettingsRepository? repository})
      : _repository = repository ?? SettingsRepositoryImpl();

  Future<void> call() async => _repository.syncSettingsWithRemote();
}
