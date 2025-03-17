import '../../category.dart';

abstract class CategoryRepository {
  Future<void> saveCategory(CategoryEntity category);
  Future<void> deleteCategory(String id);
  Future<List<CategoryEntity>> getCategories();
}
