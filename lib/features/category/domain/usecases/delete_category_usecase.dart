import '../../category.dart';

class DeleteCategoryUsecase {
  final CategoryRepository _repository;

  DeleteCategoryUsecase({
    CategoryRepository? repository,
  }) : _repository = repository ?? CategoryRepositoryImpl();

  Future<void> call(String id) async => _repository.deleteCategory(id);
}
