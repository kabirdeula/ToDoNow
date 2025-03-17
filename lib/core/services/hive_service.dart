import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/category/category.dart';
import '../../features/focus/data/models/focus_session_model.dart';
import '../../features/settings/settings.dart';
import '../../features/task/task.dart';
import '../../features/user/user.dart';
import '../constants/constants.dart';

class HiveService {
  static Future<void> init() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDocumentDir.path);

    // Register adapters
    Hive.registerAdapter(UserModelAdapter());
    Hive.registerAdapter(TaskModelAdapter());
    Hive.registerAdapter(SubTaskModelAdapter());
    Hive.registerAdapter(CategoryModelAdapter());
    Hive.registerAdapter(FocusSessionModelAdapter());
    Hive.registerAdapter(AppUsageModelAdapter());
    Hive.registerAdapter(AppSettingsModelAdapter());

    // Open boxes
    await Hive.openBox<UserModel>(HiveConstants.userBox);
    await Hive.openBox<TaskModel>(HiveConstants.taskBox);
    await Hive.openBox<CategoryModel>(HiveConstants.categoryBox);
    await Hive.openBox<FocusSessionModel>(HiveConstants.focusSessionBox);
    await Hive.openBox<AppSettingsModel>(HiveConstants.settingsBox);
  }

  static Future<void> clearAllData() async {
    await Hive.box<UserModel>(HiveConstants.userBox).clear();
    await Hive.box<TaskModel>(HiveConstants.taskBox).clear();
    await Hive.box<CategoryModel>(HiveConstants.categoryBox).clear();
    await Hive.box<FocusSessionModel>(HiveConstants.focusSessionBox).clear();
  }
}
