// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSettingsEntity {
  String get languageCode => throw _privateConstructorUsedError;
  int get primaryColorValue => throw _privateConstructorUsedError;
  String get fontFamily => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;
  bool get isGoogleCalendarImported => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsEntityCopyWith<AppSettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsEntityCopyWith<$Res> {
  factory $AppSettingsEntityCopyWith(
          AppSettingsEntity value, $Res Function(AppSettingsEntity) then) =
      _$AppSettingsEntityCopyWithImpl<$Res, AppSettingsEntity>;
  @useResult
  $Res call(
      {String languageCode,
      int primaryColorValue,
      String fontFamily,
      bool isDarkMode,
      bool isGoogleCalendarImported});
}

/// @nodoc
class _$AppSettingsEntityCopyWithImpl<$Res, $Val extends AppSettingsEntity>
    implements $AppSettingsEntityCopyWith<$Res> {
  _$AppSettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsEntity
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
abstract class _$$AppSettingsEntityImplCopyWith<$Res>
    implements $AppSettingsEntityCopyWith<$Res> {
  factory _$$AppSettingsEntityImplCopyWith(_$AppSettingsEntityImpl value,
          $Res Function(_$AppSettingsEntityImpl) then) =
      __$$AppSettingsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String languageCode,
      int primaryColorValue,
      String fontFamily,
      bool isDarkMode,
      bool isGoogleCalendarImported});
}

/// @nodoc
class __$$AppSettingsEntityImplCopyWithImpl<$Res>
    extends _$AppSettingsEntityCopyWithImpl<$Res, _$AppSettingsEntityImpl>
    implements _$$AppSettingsEntityImplCopyWith<$Res> {
  __$$AppSettingsEntityImplCopyWithImpl(_$AppSettingsEntityImpl _value,
      $Res Function(_$AppSettingsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsEntity
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
    return _then(_$AppSettingsEntityImpl(
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

class _$AppSettingsEntityImpl implements _AppSettingsEntity {
  const _$AppSettingsEntityImpl(
      {required this.languageCode,
      required this.primaryColorValue,
      required this.fontFamily,
      required this.isDarkMode,
      required this.isGoogleCalendarImported});

  @override
  final String languageCode;
  @override
  final int primaryColorValue;
  @override
  final String fontFamily;
  @override
  final bool isDarkMode;
  @override
  final bool isGoogleCalendarImported;

  @override
  String toString() {
    return 'AppSettingsEntity(languageCode: $languageCode, primaryColorValue: $primaryColorValue, fontFamily: $fontFamily, isDarkMode: $isDarkMode, isGoogleCalendarImported: $isGoogleCalendarImported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsEntityImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, languageCode, primaryColorValue,
      fontFamily, isDarkMode, isGoogleCalendarImported);

  /// Create a copy of AppSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsEntityImplCopyWith<_$AppSettingsEntityImpl> get copyWith =>
      __$$AppSettingsEntityImplCopyWithImpl<_$AppSettingsEntityImpl>(
          this, _$identity);
}

abstract class _AppSettingsEntity implements AppSettingsEntity {
  const factory _AppSettingsEntity(
      {required final String languageCode,
      required final int primaryColorValue,
      required final String fontFamily,
      required final bool isDarkMode,
      required final bool isGoogleCalendarImported}) = _$AppSettingsEntityImpl;

  @override
  String get languageCode;
  @override
  int get primaryColorValue;
  @override
  String get fontFamily;
  @override
  bool get isDarkMode;
  @override
  bool get isGoogleCalendarImported;

  /// Create a copy of AppSettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsEntityImplCopyWith<_$AppSettingsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
