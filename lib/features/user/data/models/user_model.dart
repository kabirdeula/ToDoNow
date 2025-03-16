import 'package:freezed_annotation/freezed_annotation.dart';

import '../../user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String id,
    String? username,
    required String email,
    String? name,
    String? profilePicture,
    required DateTime createdAt,
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
