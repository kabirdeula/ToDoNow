// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'focus_session_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FocusSessionEntity {
  String get id => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  int get durationInMinutes => throw _privateConstructorUsedError;
  List<AppUsageEntity> get appUsages => throw _privateConstructorUsedError;

  /// Create a copy of FocusSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FocusSessionEntityCopyWith<FocusSessionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FocusSessionEntityCopyWith<$Res> {
  factory $FocusSessionEntityCopyWith(
          FocusSessionEntity value, $Res Function(FocusSessionEntity) then) =
      _$FocusSessionEntityCopyWithImpl<$Res, FocusSessionEntity>;
  @useResult
  $Res call(
      {String id,
      DateTime startTime,
      DateTime? endTime,
      int durationInMinutes,
      List<AppUsageEntity> appUsages});
}

/// @nodoc
class _$FocusSessionEntityCopyWithImpl<$Res, $Val extends FocusSessionEntity>
    implements $FocusSessionEntityCopyWith<$Res> {
  _$FocusSessionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FocusSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? durationInMinutes = null,
    Object? appUsages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      appUsages: null == appUsages
          ? _value.appUsages
          : appUsages // ignore: cast_nullable_to_non_nullable
              as List<AppUsageEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FocusSessionEntityImplCopyWith<$Res>
    implements $FocusSessionEntityCopyWith<$Res> {
  factory _$$FocusSessionEntityImplCopyWith(_$FocusSessionEntityImpl value,
          $Res Function(_$FocusSessionEntityImpl) then) =
      __$$FocusSessionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime startTime,
      DateTime? endTime,
      int durationInMinutes,
      List<AppUsageEntity> appUsages});
}

/// @nodoc
class __$$FocusSessionEntityImplCopyWithImpl<$Res>
    extends _$FocusSessionEntityCopyWithImpl<$Res, _$FocusSessionEntityImpl>
    implements _$$FocusSessionEntityImplCopyWith<$Res> {
  __$$FocusSessionEntityImplCopyWithImpl(_$FocusSessionEntityImpl _value,
      $Res Function(_$FocusSessionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FocusSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? durationInMinutes = null,
    Object? appUsages = null,
  }) {
    return _then(_$FocusSessionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      appUsages: null == appUsages
          ? _value._appUsages
          : appUsages // ignore: cast_nullable_to_non_nullable
              as List<AppUsageEntity>,
    ));
  }
}

/// @nodoc

class _$FocusSessionEntityImpl implements _FocusSessionEntity {
  const _$FocusSessionEntityImpl(
      {required this.id,
      required this.startTime,
      this.endTime,
      required this.durationInMinutes,
      required final List<AppUsageEntity> appUsages})
      : _appUsages = appUsages;

  @override
  final String id;
  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;
  @override
  final int durationInMinutes;
  final List<AppUsageEntity> _appUsages;
  @override
  List<AppUsageEntity> get appUsages {
    if (_appUsages is EqualUnmodifiableListView) return _appUsages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appUsages);
  }

  @override
  String toString() {
    return 'FocusSessionEntity(id: $id, startTime: $startTime, endTime: $endTime, durationInMinutes: $durationInMinutes, appUsages: $appUsages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FocusSessionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes) &&
            const DeepCollectionEquality()
                .equals(other._appUsages, _appUsages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, startTime, endTime,
      durationInMinutes, const DeepCollectionEquality().hash(_appUsages));

  /// Create a copy of FocusSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FocusSessionEntityImplCopyWith<_$FocusSessionEntityImpl> get copyWith =>
      __$$FocusSessionEntityImplCopyWithImpl<_$FocusSessionEntityImpl>(
          this, _$identity);
}

abstract class _FocusSessionEntity implements FocusSessionEntity {
  const factory _FocusSessionEntity(
          {required final String id,
          required final DateTime startTime,
          final DateTime? endTime,
          required final int durationInMinutes,
          required final List<AppUsageEntity> appUsages}) =
      _$FocusSessionEntityImpl;

  @override
  String get id;
  @override
  DateTime get startTime;
  @override
  DateTime? get endTime;
  @override
  int get durationInMinutes;
  @override
  List<AppUsageEntity> get appUsages;

  /// Create a copy of FocusSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FocusSessionEntityImplCopyWith<_$FocusSessionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppUsageEntity {
  String get appName => throw _privateConstructorUsedError;
  int get timeInMinutes => throw _privateConstructorUsedError;

  /// Create a copy of AppUsageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppUsageEntityCopyWith<AppUsageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUsageEntityCopyWith<$Res> {
  factory $AppUsageEntityCopyWith(
          AppUsageEntity value, $Res Function(AppUsageEntity) then) =
      _$AppUsageEntityCopyWithImpl<$Res, AppUsageEntity>;
  @useResult
  $Res call({String appName, int timeInMinutes});
}

/// @nodoc
class _$AppUsageEntityCopyWithImpl<$Res, $Val extends AppUsageEntity>
    implements $AppUsageEntityCopyWith<$Res> {
  _$AppUsageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppUsageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? timeInMinutes = null,
  }) {
    return _then(_value.copyWith(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      timeInMinutes: null == timeInMinutes
          ? _value.timeInMinutes
          : timeInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUsageEntityImplCopyWith<$Res>
    implements $AppUsageEntityCopyWith<$Res> {
  factory _$$AppUsageEntityImplCopyWith(_$AppUsageEntityImpl value,
          $Res Function(_$AppUsageEntityImpl) then) =
      __$$AppUsageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appName, int timeInMinutes});
}

/// @nodoc
class __$$AppUsageEntityImplCopyWithImpl<$Res>
    extends _$AppUsageEntityCopyWithImpl<$Res, _$AppUsageEntityImpl>
    implements _$$AppUsageEntityImplCopyWith<$Res> {
  __$$AppUsageEntityImplCopyWithImpl(
      _$AppUsageEntityImpl _value, $Res Function(_$AppUsageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppUsageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? timeInMinutes = null,
  }) {
    return _then(_$AppUsageEntityImpl(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      timeInMinutes: null == timeInMinutes
          ? _value.timeInMinutes
          : timeInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppUsageEntityImpl implements _AppUsageEntity {
  const _$AppUsageEntityImpl(
      {required this.appName, required this.timeInMinutes});

  @override
  final String appName;
  @override
  final int timeInMinutes;

  @override
  String toString() {
    return 'AppUsageEntity(appName: $appName, timeInMinutes: $timeInMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUsageEntityImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.timeInMinutes, timeInMinutes) ||
                other.timeInMinutes == timeInMinutes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appName, timeInMinutes);

  /// Create a copy of AppUsageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUsageEntityImplCopyWith<_$AppUsageEntityImpl> get copyWith =>
      __$$AppUsageEntityImplCopyWithImpl<_$AppUsageEntityImpl>(
          this, _$identity);
}

abstract class _AppUsageEntity implements AppUsageEntity {
  const factory _AppUsageEntity(
      {required final String appName,
      required final int timeInMinutes}) = _$AppUsageEntityImpl;

  @override
  String get appName;
  @override
  int get timeInMinutes;

  /// Create a copy of AppUsageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppUsageEntityImplCopyWith<_$AppUsageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
