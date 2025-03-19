import '../../category.dart';

class SaveCategoryUsecase {
  final CategoryRepository _repository;

  SaveCategoryUsecase({
    CategoryRepository? repository,
  }) : _repository = repository ?? CategoryRepositoryImpl();

  Future<void> call(CategoryEntity category) async =>
      _repository.saveCategory(category);
}
