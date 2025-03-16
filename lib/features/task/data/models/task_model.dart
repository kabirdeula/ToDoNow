import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@HiveType(typeId: 1)
@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) String? subtitle,
    @HiveField(3) required DateTime createdAt,
    @HiveField(4) required DateTime dueDate,
    @HiveField(5) DateTime? completedAt,
    @HiveField(6) required String categoryId,
    @HiveField(7) @Default(1) int priority,
    @HiveField(8) @Default(false) bool isCompleted,
    @HiveField(9) @Default([]) List<SubTaskModel> subTasks,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

@HiveType(typeId: 2)
@freezed
class SubTaskModel with _$SubTaskModel {
  const factory SubTaskModel({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) @Default(false) bool isCompleted,
  }) = _SubTaskModel;

  factory SubTaskModel.fromJson(Map<String, dynamic> json) =>
      _$SubTaskModelFromJson(json);
}
