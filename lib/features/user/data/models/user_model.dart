import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@HiveType(typeId: 0)
@freezed
class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    @HiveField(0) required String id,
    @HiveField(1) String? username,
    @HiveField(2) required String email,
    @HiveField(3) String? name,
    @HiveField(4) String? profilePicture,
    @HiveField(5) required DateTime createdAt,
    @HiveField(6) @Default(0) int completedTasks,
    @HiveField(7) @Default(0) int pendingTasks,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      username: entity.username,
      email: entity.email,
      name: entity.name,
      profilePicture: entity.profilePicture,
      createdAt: entity.createdAt,
    );
  }

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      username: username,
      email: email,
      createdAt: createdAt,
      name: name,
      profilePicture: profilePicture,
    );
  }
}
