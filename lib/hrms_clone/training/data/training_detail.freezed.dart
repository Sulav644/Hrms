// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrainingDetail {
  String? get type => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get cost => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainingDetailCopyWith<TrainingDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingDetailCopyWith<$Res> {
  factory $TrainingDetailCopyWith(
          TrainingDetail value, $Res Function(TrainingDetail) then) =
      _$TrainingDetailCopyWithImpl<$Res, TrainingDetail>;
  @useResult
  $Res call(
      {String? type,
      String? image,
      String? name,
      String? email,
      int? cost,
      bool? isActive});
}

/// @nodoc
class _$TrainingDetailCopyWithImpl<$Res, $Val extends TrainingDetail>
    implements $TrainingDetailCopyWith<$Res> {
  _$TrainingDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? cost = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrainingDetailCopyWith<$Res>
    implements $TrainingDetailCopyWith<$Res> {
  factory _$$_TrainingDetailCopyWith(
          _$_TrainingDetail value, $Res Function(_$_TrainingDetail) then) =
      __$$_TrainingDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? image,
      String? name,
      String? email,
      int? cost,
      bool? isActive});
}

/// @nodoc
class __$$_TrainingDetailCopyWithImpl<$Res>
    extends _$TrainingDetailCopyWithImpl<$Res, _$_TrainingDetail>
    implements _$$_TrainingDetailCopyWith<$Res> {
  __$$_TrainingDetailCopyWithImpl(
      _$_TrainingDetail _value, $Res Function(_$_TrainingDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? cost = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_TrainingDetail(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_TrainingDetail extends _TrainingDetail {
  const _$_TrainingDetail(
      {this.type, this.image, this.name, this.email, this.cost, this.isActive})
      : super._();

  @override
  final String? type;
  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final int? cost;
  @override
  final bool? isActive;

  @override
  String toString() {
    return 'TrainingDetail(type: $type, image: $image, name: $name, email: $email, cost: $cost, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrainingDetail &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, image, name, email, cost, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrainingDetailCopyWith<_$_TrainingDetail> get copyWith =>
      __$$_TrainingDetailCopyWithImpl<_$_TrainingDetail>(this, _$identity);
}

abstract class _TrainingDetail extends TrainingDetail {
  const factory _TrainingDetail(
      {final String? type,
      final String? image,
      final String? name,
      final String? email,
      final int? cost,
      final bool? isActive}) = _$_TrainingDetail;
  const _TrainingDetail._() : super._();

  @override
  String? get type;
  @override
  String? get image;
  @override
  String? get name;
  @override
  String? get email;
  @override
  int? get cost;
  @override
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_TrainingDetailCopyWith<_$_TrainingDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
