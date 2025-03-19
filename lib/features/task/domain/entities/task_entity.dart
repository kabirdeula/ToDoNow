import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_entity.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity {
  const factory TaskEntity({
    required String id,
    required String title,
    String? subtitle,
    required DateTime createdAt,
    DateTime? dueDate,
    DateTime? completedAt,
    String? categoryId,
    int? priority,
    bool? isCompleted,
    List<SubTaskEntity>? subtasks,
  }) = _TaskEntity;
}

@freezed
class SubTaskEntity with _$SubTaskEntity {
  const factory SubTaskEntity({
    required String id,
    required String title,
    required bool isCompleted,
  }) = _SubTaskEntity;
}
