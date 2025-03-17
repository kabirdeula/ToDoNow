// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppSettingsModelAdapter extends TypeAdapter<AppSettingsModel> {
  @override
  final int typeId = 6;

  @override
  AppSettingsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppSettingsModel(
      languageCode: fields[0] as String,
      primaryColorValue: fields[1] as int,
      fontFamily: fields[2] as String,
      isDarkMode: fields[3] as bool,
      isGoogleCalendarImported: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, AppSettingsModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.languageCode)
      ..writeByte(1)
      ..write(obj.primaryColorValue)
      ..writeByte(2)
      ..write(obj.fontFamily)
      ..writeByte(3)
      ..write(obj.isDarkMode)
      ..writeByte(4)
      ..write(obj.isGoogleCalendarImported);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsModelImpl _$$AppSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingsModelImpl(
      languageCode: json['languageCode'] as String? ?? 'en',
      primaryColorValue: (json['primaryColorValue'] as num?)?.toInt() ?? 0,
      fontFamily: json['fontFamily'] as String? ?? 'Poppins',
      isDarkMode: json['isDarkMode'] as bool? ?? false,
      isGoogleCalendarImported:
          json['isGoogleCalendarImported'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppSettingsModelImplToJson(
        _$AppSettingsModelImpl instance) =>
    <String, dynamic>{
      'languageCode': instance.languageCode,
      'primaryColorValue': instance.primaryColorValue,
      'fontFamily': instance.fontFamily,
      'isDarkMode': instance.isDarkMode,
      'isGoogleCalendarImported': instance.isGoogleCalendarImported,
    };
