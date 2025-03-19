// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskModelAdapter extends TypeAdapter<TaskModel> {
  @override
  final int typeId = 1;

  @override
  TaskModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskModel(
      id: fields[0] as String,
      title: fields[1] as String,
      subtitle: fields[2] as String?,
      createdAt: fields[3] as DateTime,
      dueDate: fields[4] as DateTime?,
      completedAt: fields[5] as DateTime?,
      categoryId: fields[6] as String?,
      priority: fields[7] as int?,
      isCompleted: fields[8] as bool?,
      subTasks: (fields[9] as List?)?.cast<SubTaskModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, TaskModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.subtitle)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.dueDate)
      ..writeByte(5)
      ..write(obj.completedAt)
      ..writeByte(6)
      ..write(obj.categoryId)
      ..writeByte(7)
      ..write(obj.priority)
      ..writeByte(8)
      ..write(obj.isCompleted)
      ..writeByte(9)
      ..write(obj.subTasks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubTaskModelAdapter extends TypeAdapter<SubTaskModel> {
  @override
  final int typeId = 2;

  @override
  SubTaskModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubTaskModel(
      id: fields[0] as String,
      title: fields[1] as String,
      isCompleted: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, SubTaskModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.isCompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubTaskModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      categoryId: json['categoryId'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      isCompleted: json['isCompleted'] as bool?,
      subTasks: (json['subTasks'] as List<dynamic>?)
          ?.map((e) => SubTaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'createdAt': instance.createdAt.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'categoryId': instance.categoryId,
      'priority': instance.priority,
      'isCompleted': instance.isCompleted,
      'subTasks': instance.subTasks,
    };

_$SubTaskModelImpl _$$SubTaskModelImplFromJson(Map<String, dynamic> json) =>
    _$SubTaskModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$SubTaskModelImplToJson(_$SubTaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isCompleted': instance.isCompleted,
    };
