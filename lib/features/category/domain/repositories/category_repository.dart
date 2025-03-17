import '../../category.dart';

abstract class CategoryRepository {
  Future<void> addCategory(CategoryEntity category);
  Future<void> deleteCategory(String categoryId);
  List<CategoryEntity> getCategories();
}
