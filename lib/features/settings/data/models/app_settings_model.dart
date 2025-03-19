import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../settings.dart';

part 'app_settings_model.freezed.dart';
part 'app_settings_model.g.dart';

@HiveType(typeId: 6)
@freezed
class AppSettingsModel with _$AppSettingsModel {
  const AppSettingsModel._();

  const factory AppSettingsModel({
    @HiveField(0) @Default('en') String languageCode,
    @HiveField(1) @Default(0) int primaryColorValue,
    @HiveField(2) @Default('Poppins') String fontFamily,
    @HiveField(3) @Default(false) bool isDarkMode,
    @HiveField(4) @Default(false) bool isGoogleCalendarImported,
  }) = _AppSettingsModel;

  factory AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);

  factory AppSettingsModel.fromEntity(AppSettingsEntity entity) {
    return AppSettingsModel(
      languageCode: entity.languageCode,
      primaryColorValue: entity.primaryColorValue,
      fontFamily: entity.fontFamily,
      isDarkMode: entity.isDarkMode,
      isGoogleCalendarImported: entity.isGoogleCalendarImported,
    );
  }

  AppSettingsEntity toEntity() {
    return AppSettingsEntity(
      languageCode: languageCode,
      primaryColorValue: primaryColorValue,
      fontFamily: fontFamily,
      isDarkMode: isDarkMode,
      isGoogleCalendarImported: isGoogleCalendarImported,
    );
  }
}
