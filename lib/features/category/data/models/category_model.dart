import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../category.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@HiveType(typeId: 3)
@freezed
class CategoryModel with _$CategoryModel {
  const CategoryModel._();

  const factory CategoryModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required int colorValue,
    @HiveField(3) String? iconPath,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  factory CategoryModel.fromEntity(CategoryEntity entity) {
    return CategoryModel(
      id: entity.id,
      name: entity.name,
      colorValue: entity.colorValue,
      iconPath: entity.iconPath,
    );
  }

  CategoryEntity toEntity() {
    return CategoryEntity(id: id, name: name, colorValue: colorValue);
  }
}
