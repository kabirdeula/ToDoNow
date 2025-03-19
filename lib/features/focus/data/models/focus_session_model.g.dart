// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'focus_session_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FocusSessionModelAdapter extends TypeAdapter<FocusSessionModel> {
  @override
  final int typeId = 4;

  @override
  FocusSessionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FocusSessionModel(
      id: fields[0] as String,
      startTime: fields[1] as DateTime,
      endTime: fields[2] as DateTime?,
      durationInMinutes: fields[3] as int,
      appUsage: (fields[4] as List).cast<AppUsageModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, FocusSessionModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.startTime)
      ..writeByte(2)
      ..write(obj.endTime)
      ..writeByte(3)
      ..write(obj.durationInMinutes)
      ..writeByte(4)
      ..write(obj.appUsage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FocusSessionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AppUsageModelAdapter extends TypeAdapter<AppUsageModel> {
  @override
  final int typeId = 5;

  @override
  AppUsageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppUsageModel(
      appName: fields[0] as String,
      timeInMinutes: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AppUsageModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.appName)
      ..writeByte(1)
      ..write(obj.timeInMinutes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppUsageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FocusSessionModelImpl _$$FocusSessionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FocusSessionModelImpl(
      id: json['id'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      durationInMinutes: (json['durationInMinutes'] as num).toInt(),
      appUsage: (json['appUsage'] as List<dynamic>)
          .map((e) => AppUsageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FocusSessionModelImplToJson(
        _$FocusSessionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'durationInMinutes': instance.durationInMinutes,
      'appUsage': instance.appUsage,
    };

_$AppUsageModelImpl _$$AppUsageModelImplFromJson(Map<String, dynamic> json) =>
    _$AppUsageModelImpl(
      appName: json['appName'] as String,
      timeInMinutes: (json['timeInMinutes'] as num).toInt(),
    );

Map<String, dynamic> _$$AppUsageModelImplToJson(_$AppUsageModelImpl instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'timeInMinutes': instance.timeInMinutes,
    };
