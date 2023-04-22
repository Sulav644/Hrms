// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leads_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LeadsDetail {
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get project => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get createdDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeadsDetailCopyWith<LeadsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadsDetailCopyWith<$Res> {
  factory $LeadsDetailCopyWith(
          LeadsDetail value, $Res Function(LeadsDetail) then) =
      _$LeadsDetailCopyWithImpl<$Res, LeadsDetail>;
  @useResult
  $Res call(
      {String? image,
      String? name,
      String? email,
      String? project,
      String? status,
      String? createdDate});
}

/// @nodoc
class _$LeadsDetailCopyWithImpl<$Res, $Val extends LeadsDetail>
    implements $LeadsDetailCopyWith<$Res> {
  _$LeadsDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? project = freezed,
    Object? status = freezed,
    Object? createdDate = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeadsDetailCopyWith<$Res>
    implements $LeadsDetailCopyWith<$Res> {
  factory _$$_LeadsDetailCopyWith(
          _$_LeadsDetail value, $Res Function(_$_LeadsDetail) then) =
      __$$_LeadsDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? image,
      String? name,
      String? email,
      String? project,
      String? status,
      String? createdDate});
}

/// @nodoc
class __$$_LeadsDetailCopyWithImpl<$Res>
    extends _$LeadsDetailCopyWithImpl<$Res, _$_LeadsDetail>
    implements _$$_LeadsDetailCopyWith<$Res> {
  __$$_LeadsDetailCopyWithImpl(
      _$_LeadsDetail _value, $Res Function(_$_LeadsDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? project = freezed,
    Object? status = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_$_LeadsDetail(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LeadsDetail extends _LeadsDetail {
  const _$_LeadsDetail(
      {this.image,
      this.name,
      this.email,
      this.project,
      this.status,
      this.createdDate})
      : super._();

  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? project;
  @override
  final String? status;
  @override
  final String? createdDate;

  @override
  String toString() {
    return 'LeadsDetail(image: $image, name: $name, email: $email, project: $project, status: $status, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeadsDetail &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, image, name, email, project, status, createdDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeadsDetailCopyWith<_$_LeadsDetail> get copyWith =>
      __$$_LeadsDetailCopyWithImpl<_$_LeadsDetail>(this, _$identity);
}

abstract class _LeadsDetail extends LeadsDetail {
  const factory _LeadsDetail(
      {final String? image,
      final String? name,
      final String? email,
      final String? project,
      final String? status,
      final String? createdDate}) = _$_LeadsDetail;
  const _LeadsDetail._() : super._();

  @override
  String? get image;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get project;
  @override
  String? get status;
  @override
  String? get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$_LeadsDetailCopyWith<_$_LeadsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
