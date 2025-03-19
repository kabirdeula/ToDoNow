import '../../category.dart';

class GetCategoriesUsecase {
  final CategoryRepository _repository;

  GetCategoriesUsecase({
    CategoryRepository? repository,
  }) : _repository = repository ?? CategoryRepositoryImpl();

  Future<List<CategoryEntity>> call() async => _repository.getCategories();
}
