import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_entity.freezed.dart';

@freezed
class AppSettingsEntity with _$AppSettingsEntity {
  const factory AppSettingsEntity({
    required String languageCode,
    required int primaryColorValue,
    required String fontFamily,
    required bool isDarkMode,
    required bool isGoogleCalendarImported,
  }) = _AppSettingsEntity;
}
