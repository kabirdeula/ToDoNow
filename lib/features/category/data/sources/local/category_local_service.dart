import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../category.dart';

class CategoryLocalService {
  late final Future<Box<CategoryModel>> _box;

  CategoryLocalService() {
    _box = HiveUtil.openHiveBox<CategoryModel>(HiveConstants.categoryBox);
  }

  Future<void> saveCategory(CategoryModel category) async {
    try {
      final box = await _box;
      await box.put(category.id, category);
      log.i(
          "(Category Local Service) Category saved successfully: ${category.id}");
    } catch (e) {
      log.e("(Category Local Service) Error saving category: $e");
    }
  }

  Future<List<CategoryModel>> getCategories() async {
    try {
      final box = await _box;
      return box.values.toList();
    } catch (e) {
      log.e("(Category Local Service) Error getting categories: $e");
      return [];
    }
  }

  Future<void> deleteCategory(String id) async {
    try {
      final box = await _box;
      await box.delete(id);
      log.i("(Category Local Service) Category deleted successfully: $id");
    } catch (e) {
      log.e("(Category Local Service) Error deleting category: $e");
    }
  }
}
