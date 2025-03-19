import 'package:freezed_annotation/freezed_annotation.dart';

import '../task.dart';

part 'task_state.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.loading() = _Loading;
  const factory TaskState.loaded({
    required List<TaskEntity> tasks,
    @Default(false) bool isSelectionMode,
  }) = _Loaded;
  const factory TaskState.error(String error) = _Error;
}
