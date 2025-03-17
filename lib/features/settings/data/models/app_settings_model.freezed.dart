// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingsModel _$AppSettingsModelFromJson(Map<String, dynamic> json) {
  return _AppSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsModel {
  @HiveField(0)
  String get languageCode => throw _privateConstructorUsedError;
  @HiveField(1)
  int get primaryColorValue => throw _privateConstructorUsedError;
  @HiveField(2)
  String get fontFamily => throw _privateConstructorUsedError;
  @HiveField(3)
  bool get isDarkMode => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get isGoogleCalendarImported => throw _privateConstructorUsedError;

  /// Serializes this AppSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsModelCopyWith<AppSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsModelCopyWith<$Res> {
  factory $AppSettingsModelCopyWith(
          AppSettingsModel value, $Res Function(AppSettingsModel) then) =
      _$AppSettingsModelCopyWithImpl<$Res, AppSettingsModel>;
  @useResult
  $Res call(
      {@HiveField(0) String languageCode,
      @HiveField(1) int primaryColorValue,
      @HiveField(2) String fontFamily,
      @HiveField(3) bool isDarkMode,
      @HiveField(4) bool isGoogleCalendarImported});
}

/// @nodoc
class _$AppSettingsModelCopyWithImpl<$Res, $Val extends AppSettingsModel>
    implements $AppSettingsModelCopyWith<$Res> {
  _$AppSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? primaryColorValue = null,
    Object? fontFamily = null,
    Object? isDarkMode = null,
    Object? isGoogleCalendarImported = null,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      primaryColorValue: null == primaryColorValue
          ? _value.primaryColorValue
          : primaryColorValue // ignore: cast_nullable_to_non_nullable
              as int,
      fontFamily: null == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleCalendarImported: null == isGoogleCalendarImported
          ? _value.isGoogleCalendarImported
          : isGoogleCalendarImported // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsModelImplCopyWith<$Res>
    implements $AppSettingsModelCopyWith<$Res> {
  factory _$$AppSettingsModelImplCopyWith(_$AppSettingsModelImpl value,
          $Res Function(_$AppSettingsModelImpl) then) =
      __$$AppSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String languageCode,
      @HiveField(1) int primaryColorValue,
      @HiveField(2) String fontFamily,
      @HiveField(3) bool isDarkMode,
      @HiveField(4) bool isGoogleCalendarImported});
}

/// @nodoc
class __$$AppSettingsModelImplCopyWithImpl<$Res>
    extends _$AppSettingsModelCopyWithImpl<$Res, _$AppSettingsModelImpl>
    implements _$$AppSettingsModelImplCopyWith<$Res> {
  __$$AppSettingsModelImplCopyWithImpl(_$AppSettingsModelImpl _value,
      $Res Function(_$AppSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? primaryColorValue = null,
    Object? fontFamily = null,
    Object? isDarkMode = null,
    Object? isGoogleCalendarImported = null,
  }) {
    return _then(_$AppSettingsModelImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      primaryColorValue: null == primaryColorValue
          ? _value.primaryColorValue
          : primaryColorValue // ignore: cast_nullable_to_non_nullable
              as int,
      fontFamily: null == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleCalendarImported: null == isGoogleCalendarImported
          ? _value.isGoogleCalendarImported
          : isGoogleCalendarImported // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingsModelImpl extends _AppSettingsModel {
  const _$AppSettingsModelImpl(
      {@HiveField(0) this.languageCode = 'en',
      @HiveField(1) this.primaryColorValue = 0,
      @HiveField(2) this.fontFamily = 'Poppins',
      @HiveField(3) this.isDarkMode = false,
      @HiveField(4) this.isGoogleCalendarImported = false})
      : super._();

  factory _$AppSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsModelImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final String languageCode;
  @override
  @JsonKey()
  @HiveField(1)
  final int primaryColorValue;
  @override
  @JsonKey()
  @HiveField(2)
  final String fontFamily;
  @override
  @JsonKey()
  @HiveField(3)
  final bool isDarkMode;
  @override
  @JsonKey()
  @HiveField(4)
  final bool isGoogleCalendarImported;

  @override
  String toString() {
    return 'AppSettingsModel(languageCode: $languageCode, primaryColorValue: $primaryColorValue, fontFamily: $fontFamily, isDarkMode: $isDarkMode, isGoogleCalendarImported: $isGoogleCalendarImported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsModelImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.primaryColorValue, primaryColorValue) ||
                other.primaryColorValue == primaryColorValue) &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(
                    other.isGoogleCalendarImported, isGoogleCalendarImported) ||
                other.isGoogleCalendarImported == isGoogleCalendarImported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, languageCode, primaryColorValue,
      fontFamily, isDarkMode, isGoogleCalendarImported);

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsModelImplCopyWith<_$AppSettingsModelImpl> get copyWith =>
      __$$AppSettingsModelImplCopyWithImpl<_$AppSettingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsModel extends AppSettingsModel {
  const factory _AppSettingsModel(
          {@HiveField(0) final String languageCode,
          @HiveField(1) final int primaryColorValue,
          @HiveField(2) final String fontFamily,
          @HiveField(3) final bool isDarkMode,
          @HiveField(4) final bool isGoogleCalendarImported}) =
      _$AppSettingsModelImpl;
  const _AppSettingsModel._() : super._();

  factory _AppSettingsModel.fromJson(Map<String, dynamic> json) =
      _$AppSettingsModelImpl.fromJson;

  @override
  @HiveField(0)
  String get languageCode;
  @override
  @HiveField(1)
  int get primaryColorValue;
  @override
  @HiveField(2)
  String get fontFamily;
  @override
  @HiveField(3)
  bool get isDarkMode;
  @override
  @HiveField(4)
  bool get isGoogleCalendarImported;

  /// Create a copy of AppSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsModelImplCopyWith<_$AppSettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
