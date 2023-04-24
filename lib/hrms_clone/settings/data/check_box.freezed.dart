// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckBoxData {
  String get type => throw _privateConstructorUsedError;
  int get firstIndex => throw _privateConstructorUsedError;
  int get secondIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckBoxDataCopyWith<CheckBoxData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckBoxDataCopyWith<$Res> {
  factory $CheckBoxDataCopyWith(
          CheckBoxData value, $Res Function(CheckBoxData) then) =
      _$CheckBoxDataCopyWithImpl<$Res, CheckBoxData>;
  @useResult
  $Res call({String type, int firstIndex, int secondIndex});
}

/// @nodoc
class _$CheckBoxDataCopyWithImpl<$Res, $Val extends CheckBoxData>
    implements $CheckBoxDataCopyWith<$Res> {
  _$CheckBoxDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? firstIndex = null,
    Object? secondIndex = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      firstIndex: null == firstIndex
          ? _value.firstIndex
          : firstIndex // ignore: cast_nullable_to_non_nullable
              as int,
      secondIndex: null == secondIndex
          ? _value.secondIndex
          : secondIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckBoxDataCopyWith<$Res>
    implements $CheckBoxDataCopyWith<$Res> {
  factory _$$_CheckBoxDataCopyWith(
          _$_CheckBoxData value, $Res Function(_$_CheckBoxData) then) =
      __$$_CheckBoxDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, int firstIndex, int secondIndex});
}

/// @nodoc
class __$$_CheckBoxDataCopyWithImpl<$Res>
    extends _$CheckBoxDataCopyWithImpl<$Res, _$_CheckBoxData>
    implements _$$_CheckBoxDataCopyWith<$Res> {
  __$$_CheckBoxDataCopyWithImpl(
      _$_CheckBoxData _value, $Res Function(_$_CheckBoxData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? firstIndex = null,
    Object? secondIndex = null,
  }) {
    return _then(_$_CheckBoxData(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      firstIndex: null == firstIndex
          ? _value.firstIndex
          : firstIndex // ignore: cast_nullable_to_non_nullable
              as int,
      secondIndex: null == secondIndex
          ? _value.secondIndex
          : secondIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CheckBoxData extends _CheckBoxData {
  const _$_CheckBoxData(
      {required this.type, required this.firstIndex, required this.secondIndex})
      : super._();

  @override
  final String type;
  @override
  final int firstIndex;
  @override
  final int secondIndex;

  @override
  String toString() {
    return 'CheckBoxData(type: $type, firstIndex: $firstIndex, secondIndex: $secondIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckBoxData &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.firstIndex, firstIndex) ||
                other.firstIndex == firstIndex) &&
            (identical(other.secondIndex, secondIndex) ||
                other.secondIndex == secondIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, firstIndex, secondIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckBoxDataCopyWith<_$_CheckBoxData> get copyWith =>
      __$$_CheckBoxDataCopyWithImpl<_$_CheckBoxData>(this, _$identity);
}

abstract class _CheckBoxData extends CheckBoxData {
  const factory _CheckBoxData(
      {required final String type,
      required final int firstIndex,
      required final int secondIndex}) = _$_CheckBoxData;
  const _CheckBoxData._() : super._();

  @override
  String get type;
  @override
  int get firstIndex;
  @override
  int get secondIndex;
  @override
  @JsonKey(ignore: true)
  _$$_CheckBoxDataCopyWith<_$_CheckBoxData> get copyWith =>
      throw _privateConstructorUsedError;
}
