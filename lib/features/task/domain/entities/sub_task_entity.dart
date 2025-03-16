import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_task_entity.freezed.dart';

@freezed
class SubTaskEntity with _$SubTaskEntity {
  const factory SubTaskEntity({
    required String id,
    required String title,
    required bool isCompleted,
  }) = _SubTaskEntity;
}
