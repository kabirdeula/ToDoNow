import 'package:freezed_annotation/freezed_annotation.dart';

import '../../task.dart';

part 'task_entity.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity {
  const factory TaskEntity({
    required String id,
    required String title,
    String? subtitle,
    required DateTime createdAt,
    required DateTime dueDate,
    DateTime? completedAt,
    required String categoryId,
    required int priority,
    required bool isCompleted,
    required List<SubTaskEntity> subtasks,
  }) = _TaskEntity;
}
