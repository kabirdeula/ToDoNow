import 'package:freezed_annotation/freezed_annotation.dart';

part 'focus_session_entity.freezed.dart';

@freezed
class FocusSessionEntity with _$FocusSessionEntity {
  const factory FocusSessionEntity({
    required String id,
    required DateTime startTime,
    DateTime? endTime,
    required int durationInMinutes,
    required List<AppUsageEntity> appUsages,
  }) = _FocusSessionEntity;
}

@freezed
class AppUsageEntity with _$AppUsageEntity {
  const factory AppUsageEntity({
    required String appName,
    required int timeInMinutes,
  }) = _AppUsageEntity;
}
