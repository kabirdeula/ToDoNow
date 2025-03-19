import '../../../../core/core.dart';
import '../../settings.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsLocalService _localService;
  final SettingsRemoteService _remoteService;

  SettingsRepositoryImpl({
    SettingsLocalService? localService,
    SettingsRemoteService? remoteService,
  })  : _localService = localService ?? SettingsLocalService(),
        _remoteService = remoteService ?? SettingsRemoteService();

  @override
  Future<AppSettingsEntity> getSettings() async {
    final localSettings = await _localService.getSettings();
    return localSettings.toEntity();
  }

  @override
  Future<void> saveSettings(AppSettingsEntity settings) async {
    final settingsModel = AppSettingsModel.fromEntity(settings);
    await _localService.saveSettings(settingsModel);
    await _remoteService.saveSettings(settingsModel);
  }

  @override
  Future<void> syncSettingsWithRemote() async {
    final remoteSettings = await _remoteService.fetchSettings();
    if (remoteSettings != null) {
      await _localService.saveSettings(remoteSettings);
      log.i("(SettingsRepositoryImpl) Synced remote settings to local.");
    }
  }
}
