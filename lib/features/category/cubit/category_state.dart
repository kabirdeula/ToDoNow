import 'package:freezed_annotation/freezed_annotation.dart';

import '../category.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.loaded(List<CategoryEntity> categories) = _Loaded;
  const factory CategoryState.error(String error) = _Error;
}
