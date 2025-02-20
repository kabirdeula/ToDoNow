import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@HiveType(typeId: 0)
@freezed
class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    @HiveField(0) required bool isFirstTimeUser,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelFromJson(json);
}
