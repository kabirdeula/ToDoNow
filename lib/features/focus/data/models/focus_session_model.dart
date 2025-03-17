import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../focus.dart';

part 'focus_session_model.freezed.dart';
part 'focus_session_model.g.dart';

@HiveType(typeId: 4)
@freezed
class FocusSessionModel with _$FocusSessionModel {
  const FocusSessionModel._();

  const factory FocusSessionModel({
    @HiveField(0) required String id,
    @HiveField(1) required DateTime startTime,
    @HiveField(2) DateTime? endTime,
    @HiveField(3) required int durationInMinutes,
    @HiveField(4) required List<AppUsageModel> appUsage,
  }) = _FocusSessionModel;

  factory FocusSessionModel.fromJson(Map<String, dynamic> json) =>
      _$FocusSessionModelFromJson(json);

  factory FocusSessionModel.fromEntity(FocusSessionEntity entity) {
    return FocusSessionModel(
      id: entity.id,
      startTime: entity.startTime,
      durationInMinutes: entity.durationInMinutes,
      appUsage:
          entity.appUsages.map((e) => AppUsageModel.fromEntity(e)).toList(),
    );
  }

  FocusSessionEntity toEntity() {
    return FocusSessionEntity(
      id: id,
      startTime: startTime,
      durationInMinutes: durationInMinutes,
      appUsages: appUsage.map((e) => e.toEntity()).toList(),
    );
  }
}

@HiveType(typeId: 5)
@freezed
class AppUsageModel with _$AppUsageModel {
  const AppUsageModel._();

  const factory AppUsageModel({
    @HiveField(0) required String appName,
    @HiveField(1) required int timeInMinutes,
  }) = _AppUsageModel;

  factory AppUsageModel.fromJson(Map<String, dynamic> json) =>
      _$AppUsageModelFromJson(json);

  factory AppUsageModel.fromEntity(AppUsageEntity entity) {
    return AppUsageModel(
      appName: entity.appName,
      timeInMinutes: entity.timeInMinutes,
    );
  }

  AppUsageEntity toEntity() {
    return AppUsageEntity(
      appName: appName,
      timeInMinutes: timeInMinutes,
    );
  }
}
