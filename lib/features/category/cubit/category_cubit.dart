import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di.dart';
import '../../../core/core.dart';
import '../category.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final DeleteCategoryUsecase _deleteCategory;
  final GetCategoriesUsecase _getCategories;
  final SaveCategoryUsecase _saveCategory;

  CategoryCubit()
      : _deleteCategory = sl(),
        _getCategories = sl(),
        _saveCategory = sl(),
        super(CategoryState.initial());

  Future<void> loadCategories() async {
    log.d("(Category Cubit) Category Loading");
    emit(CategoryState.loading());

    try {
      final categories = await _getCategories.call();
      emit(CategoryState.loaded(categories));
    } catch (e) {
      emit(CategoryState.error(e.toString()));
    }
  }

  Future<void> saveCategory(CategoryEntity category) async {
    try {
      await _saveCategory(category);
      loadCategories();
    } catch (e) {
      emit(CategoryState.error(e.toString()));
    }
  }

  Future<void> deleteCategory(String id) async{
    await _deleteCategory(id);
    loadCategories();
  }
}
