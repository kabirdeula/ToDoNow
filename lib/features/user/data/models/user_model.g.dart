// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 0;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      id: fields[0] as String,
      username: fields[1] as String?,
      email: fields[2] as String,
      name: fields[3] as String?,
      profilePicture: fields[4] as String?,
      createdAt: fields[5] as DateTime,
      completedTasks: fields[6] as int,
      pendingTasks: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.profilePicture)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.completedTasks)
      ..writeByte(7)
      ..write(obj.pendingTasks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      username: json['username'] as String?,
      email: json['email'] as String,
      name: json['name'] as String?,
      profilePicture: json['profilePicture'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      completedTasks: (json['completedTasks'] as num?)?.toInt() ?? 0,
      pendingTasks: (json['pendingTasks'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'createdAt': instance.createdAt.toIso8601String(),
      'completedTasks': instance.completedTasks,
      'pendingTasks': instance.pendingTasks,
    };
