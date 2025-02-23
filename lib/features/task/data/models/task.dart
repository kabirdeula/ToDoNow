import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@HiveType(typeId: 1)
@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    @HiveField(0) String? id,
    @HiveField(1) String? title,
    @HiveField(2) String? description,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
