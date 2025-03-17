import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../settings.dart';

class SettingsLocalService {
  late final Future<Box<AppSettingsModel>> _box;

  SettingsLocalService() {
    _box = HiveUtil.openHiveBox<AppSettingsModel>(HiveConstants.settingsBox);
  }

  Future<void> saveSettings(AppSettingsModel settings) async {
    try {
      final box = await _box;
      await box.put('appSettings', settings);
      log.i("(SettingsLocalService) Settings saved successfully.");
    } catch (e) {
      log.e("(SettingsLocalService) Error saving settings: $e");
    }
  }

  /// Retrieves the stored app settings.
  Future<AppSettingsModel> getSettings() async {
    try {
      final box = await _box;
      return box.get('appSettings') ?? const AppSettingsModel();
    } catch (e) {
      log.e("(SettingsLocalService) Error retrieving settings: $e");
      return const AppSettingsModel();
    }
  }

  /// Clears stored settings.
  Future<void> clearSettings() async {
    try {
      final box = await _box;
      await box.clear();
      log.i("(SettingsLocalService) Settings cleared.");
    } catch (e) {
      log.e("(SettingsLocalService) Error clearing settings: $e");
    }
  }
}
