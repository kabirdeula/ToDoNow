import '../../category.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryLocalService _localService;
  final CategoryRemoteService _remoteService;

  CategoryRepositoryImpl({
    CategoryLocalService? localService,
    CategoryRemoteService? remoteService,
  })  : _localService = localService ?? CategoryLocalService(),
        _remoteService = remoteService ?? CategoryRemoteService();

  @override
  Future<void> deleteCategory(String id) async {
    await _localService.deleteCategory(id);
    await _remoteService.deleteCategory(id);
  }

  @override
  Future<List<CategoryEntity>> getCategories() async {
    final localCategories = await _localService.getCategories();
    if (localCategories.isNotEmpty) {
      return localCategories.map((category) => category.toEntity()).toList();
    }
    final remoteCategories = await _remoteService.fetchCategories();
    for (var category in remoteCategories) {
      await _localService.saveCategory(category);
    }

    return remoteCategories.map((category) => category.toEntity()).toList();
  }

  @override
  Future<void> saveCategory(CategoryEntity category) async {
    final categoryModel = CategoryModel.fromEntity(category);
    await _localService.saveCategory(categoryModel);
    await _remoteService.saveCategory(categoryModel);
  }
}
