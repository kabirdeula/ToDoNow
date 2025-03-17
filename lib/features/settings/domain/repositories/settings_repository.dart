import '../../settings.dart';

abstract class SettingsRepository {
  Future<void> saveSettings(AppSettingsEntity settings);
  Future<AppSettingsEntity> getSettings();
  Future<void> syncSettingsWithRemote();
}
