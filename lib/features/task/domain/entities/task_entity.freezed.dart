// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  List<SubTaskEntity> get subtasks => throw _privateConstructorUsedError;

  /// Create a copy of TaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskEntityCopyWith<TaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEntityCopyWith<$Res> {
  factory $TaskEntityCopyWith(
          TaskEntity value, $Res Function(TaskEntity) then) =
      _$TaskEntityCopyWithImpl<$Res, TaskEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? subtitle,
      DateTime createdAt,
      DateTime dueDate,
      DateTime? completedAt,
      String categoryId,
      int priority,
      bool isCompleted,
      List<SubTaskEntity> subtasks});
}

/// @nodoc
class _$TaskEntityCopyWithImpl<$Res, $Val extends TaskEntity>
    implements $TaskEntityCopyWith<$Res> {
  _$TaskEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = freezed,
    Object? createdAt = null,
    Object? dueDate = null,
    Object? completedAt = freezed,
    Object? categoryId = null,
    Object? priority = null,
    Object? isCompleted = null,
    Object? subtasks = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      subtasks: null == subtasks
          ? _value.subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as List<SubTaskEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskEntityImplCopyWith<$Res>
    implements $TaskEntityCopyWith<$Res> {
  factory _$$TaskEntityImplCopyWith(
          _$TaskEntityImpl value, $Res Function(_$TaskEntityImpl) then) =
      __$$TaskEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? subtitle,
      DateTime createdAt,
      DateTime dueDate,
      DateTime? completedAt,
      String categoryId,
      int priority,
      bool isCompleted,
      List<SubTaskEntity> subtasks});
}

/// @nodoc
class __$$TaskEntityImplCopyWithImpl<$Res>
    extends _$TaskEntityCopyWithImpl<$Res, _$TaskEntityImpl>
    implements _$$TaskEntityImplCopyWith<$Res> {
  __$$TaskEntityImplCopyWithImpl(
      _$TaskEntityImpl _value, $Res Function(_$TaskEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = freezed,
    Object? createdAt = null,
    Object? dueDate = null,
    Object? completedAt = freezed,
    Object? categoryId = null,
    Object? priority = null,
    Object? isCompleted = null,
    Object? subtasks = null,
  }) {
    return _then(_$TaskEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      subtasks: null == subtasks
          ? _value._subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as List<SubTaskEntity>,
    ));
  }
}

/// @nodoc

class _$TaskEntityImpl implements _TaskEntity {
  const _$TaskEntityImpl(
      {required this.id,
      required this.title,
      this.subtitle,
      required this.createdAt,
      required this.dueDate,
      this.completedAt,
      required this.categoryId,
      required this.priority,
      required this.isCompleted,
      required final List<SubTaskEntity> subtasks})
      : _subtasks = subtasks;

  @override
  final String id;
  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final DateTime createdAt;
  @override
  final DateTime dueDate;
  @override
  final DateTime? completedAt;
  @override
  final String categoryId;
  @override
  final int priority;
  @override
  final bool isCompleted;
  final List<SubTaskEntity> _subtasks;
  @override
  List<SubTaskEntity> get subtasks {
    if (_subtasks is EqualUnmodifiableListView) return _subtasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subtasks);
  }

  @override
  String toString() {
    return 'TaskEntity(id: $id, title: $title, subtitle: $subtitle, createdAt: $createdAt, dueDate: $dueDate, completedAt: $completedAt, categoryId: $categoryId, priority: $priority, isCompleted: $isCompleted, subtasks: $subtasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            const DeepCollectionEquality().equals(other._subtasks, _subtasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      subtitle,
      createdAt,
      dueDate,
      completedAt,
      categoryId,
      priority,
      isCompleted,
      const DeepCollectionEquality().hash(_subtasks));

  /// Create a copy of TaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEntityImplCopyWith<_$TaskEntityImpl> get copyWith =>
      __$$TaskEntityImplCopyWithImpl<_$TaskEntityImpl>(this, _$identity);
}

abstract class _TaskEntity implements TaskEntity {
  const factory _TaskEntity(
      {required final String id,
      required final String title,
      final String? subtitle,
      required final DateTime createdAt,
      required final DateTime dueDate,
      final DateTime? completedAt,
      required final String categoryId,
      required final int priority,
      required final bool isCompleted,
      required final List<SubTaskEntity> subtasks}) = _$TaskEntityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get subtitle;
  @override
  DateTime get createdAt;
  @override
  DateTime get dueDate;
  @override
  DateTime? get completedAt;
  @override
  String get categoryId;
  @override
  int get priority;
  @override
  bool get isCompleted;
  @override
  List<SubTaskEntity> get subtasks;

  /// Create a copy of TaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskEntityImplCopyWith<_$TaskEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubTaskEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Create a copy of SubTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubTaskEntityCopyWith<SubTaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubTaskEntityCopyWith<$Res> {
  factory $SubTaskEntityCopyWith(
          SubTaskEntity value, $Res Function(SubTaskEntity) then) =
      _$SubTaskEntityCopyWithImpl<$Res, SubTaskEntity>;
  @useResult
  $Res call({String id, String title, bool isCompleted});
}

/// @nodoc
class _$SubTaskEntityCopyWithImpl<$Res, $Val extends SubTaskEntity>
    implements $SubTaskEntityCopyWith<$Res> {
  _$SubTaskEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubTaskEntityImplCopyWith<$Res>
    implements $SubTaskEntityCopyWith<$Res> {
  factory _$$SubTaskEntityImplCopyWith(
          _$SubTaskEntityImpl value, $Res Function(_$SubTaskEntityImpl) then) =
      __$$SubTaskEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, bool isCompleted});
}

/// @nodoc
class __$$SubTaskEntityImplCopyWithImpl<$Res>
    extends _$SubTaskEntityCopyWithImpl<$Res, _$SubTaskEntityImpl>
    implements _$$SubTaskEntityImplCopyWith<$Res> {
  __$$SubTaskEntityImplCopyWithImpl(
      _$SubTaskEntityImpl _value, $Res Function(_$SubTaskEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isCompleted = null,
  }) {
    return _then(_$SubTaskEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SubTaskEntityImpl implements _SubTaskEntity {
  const _$SubTaskEntityImpl(
      {required this.id, required this.title, required this.isCompleted});

  @override
  final String id;
  @override
  final String title;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'SubTaskEntity(id: $id, title: $title, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubTaskEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, isCompleted);

  /// Create a copy of SubTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubTaskEntityImplCopyWith<_$SubTaskEntityImpl> get copyWith =>
      __$$SubTaskEntityImplCopyWithImpl<_$SubTaskEntityImpl>(this, _$identity);
}

abstract class _SubTaskEntity implements SubTaskEntity {
  const factory _SubTaskEntity(
      {required final String id,
      required final String title,
      required final bool isCompleted}) = _$SubTaskEntityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get isCompleted;

  /// Create a copy of SubTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubTaskEntityImplCopyWith<_$SubTaskEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
