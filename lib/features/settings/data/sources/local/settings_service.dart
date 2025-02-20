import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_now/core/utils/utils.dart';
import 'package:to_do_now/features/settings/settings.dart';

class SettingsService {
  late final Future<Box<SettingsModel>> _box;

  SettingsService() {
    _box = HiveUtil.openHiveBox<SettingsModel>('settings');
  }

  Future<bool> isFirstTimeUser() async {
    try {
      final box = await _box;
      final settings = box.get('first_time_user',
          defaultValue: const SettingsModel(isFirstTimeUser: true));
      return settings!.isFirstTimeUser;
    } catch (e) {
      return true;
    }
  }

  Future<void> setFirstTimeUser() async {
    try {
      final box = await _box;
      await box.put(
          'first_time_user', const SettingsModel(isFirstTimeUser: false));
    } catch (e) {
      log.e("(Settings Service): Error saving settings: $e");
    }
  }
}
