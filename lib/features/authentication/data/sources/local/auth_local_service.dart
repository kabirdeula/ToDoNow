import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/core.dart';
import '../../../../user/user.dart';

class AuthLocalService {
  late final Future<Box<UserModel>> _box;

  AuthLocalService() {
    _box = HiveUtil.openHiveBox<UserModel>(HiveConstants.userBox);
  }

  Future<void> cacheUser({required UserModel user}) async {
    try {
      final box = await _box;
      await box.put(user.id, user);
      log.i("(Auth Local Service) User cached successfully: ${user.id}.");
    } catch (e) {
      log.e("(Auth Local Service) Error caching user: $e");
    }
  }

  Future<UserModel?> getCachedUser() async {
    try {
      final box = await _box;
      if (box.isEmpty) return null;
      return box.get(box.keys.first);
    } catch (e) {
      log.e("(AUth Local Service) Error retrieving cached user: $e");
      return null;
    }
  }

  Future<void> clearUser() async {
    try {
      final box = await _box;
      await box.clear();
      log.i("(Auth Local Service) Cached user cleared.");
    } catch (e) {
      log.e("(Auth Local Service) Error clearing cached user: $e");
    }
  }

  Future<void> close() async {
    final box = await _box;
    await box.close();
    log.i("(Auth Local Service) Hive box closed.");
  }
}
