// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MemberList {
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberListCopyWith<MemberList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberListCopyWith<$Res> {
  factory $MemberListCopyWith(
          MemberList value, $Res Function(MemberList) then) =
      _$MemberListCopyWithImpl<$Res, MemberList>;
  @useResult
  $Res call({String? image, String? name, String? designation});
}

/// @nodoc
class _$MemberListCopyWithImpl<$Res, $Val extends MemberList>
    implements $MemberListCopyWith<$Res> {
  _$MemberListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? designation = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberListCopyWith<$Res>
    implements $MemberListCopyWith<$Res> {
  factory _$$_MemberListCopyWith(
          _$_MemberList value, $Res Function(_$_MemberList) then) =
      __$$_MemberListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, String? name, String? designation});
}

/// @nodoc
class __$$_MemberListCopyWithImpl<$Res>
    extends _$MemberListCopyWithImpl<$Res, _$_MemberList>
    implements _$$_MemberListCopyWith<$Res> {
  __$$_MemberListCopyWithImpl(
      _$_MemberList _value, $Res Function(_$_MemberList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? designation = freezed,
  }) {
    return _then(_$_MemberList(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MemberList extends _MemberList {
  const _$_MemberList({this.image, this.name, this.designation}) : super._();

  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? designation;

  @override
  String toString() {
    return 'MemberList(image: $image, name: $name, designation: $designation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberList &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.designation, designation) ||
                other.designation == designation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, name, designation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberListCopyWith<_$_MemberList> get copyWith =>
      __$$_MemberListCopyWithImpl<_$_MemberList>(this, _$identity);
}

abstract class _MemberList extends MemberList {
  const factory _MemberList(
      {final String? image,
      final String? name,
      final String? designation}) = _$_MemberList;
  const _MemberList._() : super._();

  @override
  String? get image;
  @override
  String? get name;
  @override
  String? get designation;
  @override
  @JsonKey(ignore: true)
  _$$_MemberListCopyWith<_$_MemberList> get copyWith =>
      throw _privateConstructorUsedError;
}
