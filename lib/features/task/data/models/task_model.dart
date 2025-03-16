import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_now/features/task/task.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@HiveType(typeId: 1)
@freezed
class TaskModel with _$TaskModel {
  const TaskModel._();

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

  factory TaskModel.fromEntity(TaskEntity entity) {
    return TaskModel(
      id: entity.id,
      title: entity.title,
      subtitle: entity.subtitle,
      createdAt: entity.createdAt,
      dueDate: entity.dueDate,
      completedAt: entity.completedAt,
      categoryId: entity.categoryId,
      priority: entity.priority,
      isCompleted: entity.isCompleted,
      subTasks: entity.subtasks
          .map((e) => SubTaskModel(
                id: e.id,
                title: e.title,
                isCompleted: e.isCompleted,
              ))
          .toList(),
    );
  }

  TaskEntity toEntity() {
    return TaskEntity(
      id: id,
      title: title,
      subtitle: subtitle,
      createdAt: createdAt,
      dueDate: dueDate,
      completedAt: completedAt,
      categoryId: categoryId,
      priority: priority,
      isCompleted: isCompleted,
      subtasks: subTasks
          .map((e) => SubTaskEntity(
                id: e.id,
                title: e.title,
                isCompleted: e.isCompleted,
              ))
          .toList(),
    );
  }
}

@HiveType(typeId: 2)
@freezed
class SubTaskModel with _$SubTaskModel {
  const SubTaskModel._();

  const factory SubTaskModel({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) @Default(false) bool isCompleted,
  }) = _SubTaskModel;

  factory SubTaskModel.fromJson(Map<String, dynamic> json) =>
      _$SubTaskModelFromJson(json);

  factory SubTaskModel.fromEntity(SubTaskEntity entity) {
    return SubTaskModel(
      id: entity.id,
      title: entity.title,
      isCompleted: entity.isCompleted,
    );
  }

  SubTaskEntity toEntity() {
    return SubTaskEntity(id: id, title: title, isCompleted: isCompleted);
  }
}
