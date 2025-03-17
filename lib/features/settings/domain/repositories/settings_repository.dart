import '../../settings.dart';

abstract class SettingsRepository {
  Future<void> updateSettings(AppSettingsEntity settings);
  AppSettingsEntity getSettings();
}
