// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'holiday_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HolidayDate {
  String? get name => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HolidayDateCopyWith<HolidayDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayDateCopyWith<$Res> {
  factory $HolidayDateCopyWith(
          HolidayDate value, $Res Function(HolidayDate) then) =
      _$HolidayDateCopyWithImpl<$Res, HolidayDate>;
  @useResult
  $Res call({String? name, String? date});
}

/// @nodoc
class _$HolidayDateCopyWithImpl<$Res, $Val extends HolidayDate>
    implements $HolidayDateCopyWith<$Res> {
  _$HolidayDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HolidayDateCopyWith<$Res>
    implements $HolidayDateCopyWith<$Res> {
  factory _$$_HolidayDateCopyWith(
          _$_HolidayDate value, $Res Function(_$_HolidayDate) then) =
      __$$_HolidayDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? date});
}

/// @nodoc
class __$$_HolidayDateCopyWithImpl<$Res>
    extends _$HolidayDateCopyWithImpl<$Res, _$_HolidayDate>
    implements _$$_HolidayDateCopyWith<$Res> {
  __$$_HolidayDateCopyWithImpl(
      _$_HolidayDate _value, $Res Function(_$_HolidayDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_HolidayDate(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HolidayDate extends _HolidayDate {
  const _$_HolidayDate({this.name, this.date}) : super._();

  @override
  final String? name;
  @override
  final String? date;

  @override
  String toString() {
    return 'HolidayDate(name: $name, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HolidayDate &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HolidayDateCopyWith<_$_HolidayDate> get copyWith =>
      __$$_HolidayDateCopyWithImpl<_$_HolidayDate>(this, _$identity);
}

abstract class _HolidayDate extends HolidayDate {
  const factory _HolidayDate({final String? name, final String? date}) =
      _$_HolidayDate;
  const _HolidayDate._() : super._();

  @override
  String? get name;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$_HolidayDateCopyWith<_$_HolidayDate> get copyWith =>
      throw _privateConstructorUsedError;
}
