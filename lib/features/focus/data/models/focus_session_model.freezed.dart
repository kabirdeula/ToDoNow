// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'focus_session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FocusSessionModel _$FocusSessionModelFromJson(Map<String, dynamic> json) {
  return _FocusSessionModel.fromJson(json);
}

/// @nodoc
mixin _$FocusSessionModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get startTime => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime? get endTime => throw _privateConstructorUsedError;
  @HiveField(3)
  int get durationInMinutes => throw _privateConstructorUsedError;
  @HiveField(4)
  List<AppUsageModel> get appUsage => throw _privateConstructorUsedError;

  /// Serializes this FocusSessionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FocusSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FocusSessionModelCopyWith<FocusSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FocusSessionModelCopyWith<$Res> {
  factory $FocusSessionModelCopyWith(
          FocusSessionModel value, $Res Function(FocusSessionModel) then) =
      _$FocusSessionModelCopyWithImpl<$Res, FocusSessionModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) DateTime startTime,
      @HiveField(2) DateTime? endTime,
      @HiveField(3) int durationInMinutes,
      @HiveField(4) List<AppUsageModel> appUsage});
}

/// @nodoc
class _$FocusSessionModelCopyWithImpl<$Res, $Val extends FocusSessionModel>
    implements $FocusSessionModelCopyWith<$Res> {
  _$FocusSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FocusSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? durationInMinutes = null,
    Object? appUsage = null,
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
      appUsage: null == appUsage
          ? _value.appUsage
          : appUsage // ignore: cast_nullable_to_non_nullable
              as List<AppUsageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FocusSessionModelImplCopyWith<$Res>
    implements $FocusSessionModelCopyWith<$Res> {
  factory _$$FocusSessionModelImplCopyWith(_$FocusSessionModelImpl value,
          $Res Function(_$FocusSessionModelImpl) then) =
      __$$FocusSessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) DateTime startTime,
      @HiveField(2) DateTime? endTime,
      @HiveField(3) int durationInMinutes,
      @HiveField(4) List<AppUsageModel> appUsage});
}

/// @nodoc
class __$$FocusSessionModelImplCopyWithImpl<$Res>
    extends _$FocusSessionModelCopyWithImpl<$Res, _$FocusSessionModelImpl>
    implements _$$FocusSessionModelImplCopyWith<$Res> {
  __$$FocusSessionModelImplCopyWithImpl(_$FocusSessionModelImpl _value,
      $Res Function(_$FocusSessionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FocusSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? durationInMinutes = null,
    Object? appUsage = null,
  }) {
    return _then(_$FocusSessionModelImpl(
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
      appUsage: null == appUsage
          ? _value._appUsage
          : appUsage // ignore: cast_nullable_to_non_nullable
              as List<AppUsageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FocusSessionModelImpl extends _FocusSessionModel {
  const _$FocusSessionModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.startTime,
      @HiveField(2) this.endTime,
      @HiveField(3) required this.durationInMinutes,
      @HiveField(4) required final List<AppUsageModel> appUsage})
      : _appUsage = appUsage,
        super._();

  factory _$FocusSessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FocusSessionModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final DateTime startTime;
  @override
  @HiveField(2)
  final DateTime? endTime;
  @override
  @HiveField(3)
  final int durationInMinutes;
  final List<AppUsageModel> _appUsage;
  @override
  @HiveField(4)
  List<AppUsageModel> get appUsage {
    if (_appUsage is EqualUnmodifiableListView) return _appUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appUsage);
  }

  @override
  String toString() {
    return 'FocusSessionModel(id: $id, startTime: $startTime, endTime: $endTime, durationInMinutes: $durationInMinutes, appUsage: $appUsage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FocusSessionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes) &&
            const DeepCollectionEquality().equals(other._appUsage, _appUsage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startTime, endTime,
      durationInMinutes, const DeepCollectionEquality().hash(_appUsage));

  /// Create a copy of FocusSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FocusSessionModelImplCopyWith<_$FocusSessionModelImpl> get copyWith =>
      __$$FocusSessionModelImplCopyWithImpl<_$FocusSessionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FocusSessionModelImplToJson(
      this,
    );
  }
}

abstract class _FocusSessionModel extends FocusSessionModel {
  const factory _FocusSessionModel(
          {@HiveField(0) required final String id,
          @HiveField(1) required final DateTime startTime,
          @HiveField(2) final DateTime? endTime,
          @HiveField(3) required final int durationInMinutes,
          @HiveField(4) required final List<AppUsageModel> appUsage}) =
      _$FocusSessionModelImpl;
  const _FocusSessionModel._() : super._();

  factory _FocusSessionModel.fromJson(Map<String, dynamic> json) =
      _$FocusSessionModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  DateTime get startTime;
  @override
  @HiveField(2)
  DateTime? get endTime;
  @override
  @HiveField(3)
  int get durationInMinutes;
  @override
  @HiveField(4)
  List<AppUsageModel> get appUsage;

  /// Create a copy of FocusSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FocusSessionModelImplCopyWith<_$FocusSessionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppUsageModel _$AppUsageModelFromJson(Map<String, dynamic> json) {
  return _AppUsageModel.fromJson(json);
}

/// @nodoc
mixin _$AppUsageModel {
  @HiveField(0)
  String get appName => throw _privateConstructorUsedError;
  @HiveField(1)
  int get timeInMinutes => throw _privateConstructorUsedError;

  /// Serializes this AppUsageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppUsageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppUsageModelCopyWith<AppUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUsageModelCopyWith<$Res> {
  factory $AppUsageModelCopyWith(
          AppUsageModel value, $Res Function(AppUsageModel) then) =
      _$AppUsageModelCopyWithImpl<$Res, AppUsageModel>;
  @useResult
  $Res call({@HiveField(0) String appName, @HiveField(1) int timeInMinutes});
}

/// @nodoc
class _$AppUsageModelCopyWithImpl<$Res, $Val extends AppUsageModel>
    implements $AppUsageModelCopyWith<$Res> {
  _$AppUsageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppUsageModel
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
abstract class _$$AppUsageModelImplCopyWith<$Res>
    implements $AppUsageModelCopyWith<$Res> {
  factory _$$AppUsageModelImplCopyWith(
          _$AppUsageModelImpl value, $Res Function(_$AppUsageModelImpl) then) =
      __$$AppUsageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String appName, @HiveField(1) int timeInMinutes});
}

/// @nodoc
class __$$AppUsageModelImplCopyWithImpl<$Res>
    extends _$AppUsageModelCopyWithImpl<$Res, _$AppUsageModelImpl>
    implements _$$AppUsageModelImplCopyWith<$Res> {
  __$$AppUsageModelImplCopyWithImpl(
      _$AppUsageModelImpl _value, $Res Function(_$AppUsageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppUsageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? timeInMinutes = null,
  }) {
    return _then(_$AppUsageModelImpl(
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
@JsonSerializable()
class _$AppUsageModelImpl extends _AppUsageModel {
  const _$AppUsageModelImpl(
      {@HiveField(0) required this.appName,
      @HiveField(1) required this.timeInMinutes})
      : super._();

  factory _$AppUsageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUsageModelImplFromJson(json);

  @override
  @HiveField(0)
  final String appName;
  @override
  @HiveField(1)
  final int timeInMinutes;

  @override
  String toString() {
    return 'AppUsageModel(appName: $appName, timeInMinutes: $timeInMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUsageModelImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.timeInMinutes, timeInMinutes) ||
                other.timeInMinutes == timeInMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appName, timeInMinutes);

  /// Create a copy of AppUsageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUsageModelImplCopyWith<_$AppUsageModelImpl> get copyWith =>
      __$$AppUsageModelImplCopyWithImpl<_$AppUsageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUsageModelImplToJson(
      this,
    );
  }
}

abstract class _AppUsageModel extends AppUsageModel {
  const factory _AppUsageModel(
      {@HiveField(0) required final String appName,
      @HiveField(1) required final int timeInMinutes}) = _$AppUsageModelImpl;
  const _AppUsageModel._() : super._();

  factory _AppUsageModel.fromJson(Map<String, dynamic> json) =
      _$AppUsageModelImpl.fromJson;

  @override
  @HiveField(0)
  String get appName;
  @override
  @HiveField(1)
  int get timeInMinutes;

  /// Create a copy of AppUsageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppUsageModelImplCopyWith<_$AppUsageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
