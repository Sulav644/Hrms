// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goal_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoalDetail {
  String? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoalDetailCopyWith<GoalDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalDetailCopyWith<$Res> {
  factory $GoalDetailCopyWith(
          GoalDetail value, $Res Function(GoalDetail) then) =
      _$GoalDetailCopyWithImpl<$Res, GoalDetail>;
  @useResult
  $Res call({String? type, String? description});
}

/// @nodoc
class _$GoalDetailCopyWithImpl<$Res, $Val extends GoalDetail>
    implements $GoalDetailCopyWith<$Res> {
  _$GoalDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoalDetailCopyWith<$Res>
    implements $GoalDetailCopyWith<$Res> {
  factory _$$_GoalDetailCopyWith(
          _$_GoalDetail value, $Res Function(_$_GoalDetail) then) =
      __$$_GoalDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? description});
}

/// @nodoc
class __$$_GoalDetailCopyWithImpl<$Res>
    extends _$GoalDetailCopyWithImpl<$Res, _$_GoalDetail>
    implements _$$_GoalDetailCopyWith<$Res> {
  __$$_GoalDetailCopyWithImpl(
      _$_GoalDetail _value, $Res Function(_$_GoalDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_GoalDetail(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GoalDetail extends _GoalDetail {
  const _$_GoalDetail({this.type, this.description}) : super._();

  @override
  final String? type;
  @override
  final String? description;

  @override
  String toString() {
    return 'GoalDetail(type: $type, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoalDetail &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoalDetailCopyWith<_$_GoalDetail> get copyWith =>
      __$$_GoalDetailCopyWithImpl<_$_GoalDetail>(this, _$identity);
}

abstract class _GoalDetail extends GoalDetail {
  const factory _GoalDetail({final String? type, final String? description}) =
      _$_GoalDetail;
  const _GoalDetail._() : super._();

  @override
  String? get type;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_GoalDetailCopyWith<_$_GoalDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoalTrackDetail {
  String? get type => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get target => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  int? get progress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoalTrackDetailCopyWith<GoalTrackDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalTrackDetailCopyWith<$Res> {
  factory $GoalTrackDetailCopyWith(
          GoalTrackDetail value, $Res Function(GoalTrackDetail) then) =
      _$GoalTrackDetailCopyWithImpl<$Res, GoalTrackDetail>;
  @useResult
  $Res call(
      {String? type,
      String? subject,
      String? target,
      String? endDate,
      String? description,
      bool? isActive,
      int? progress});
}

/// @nodoc
class _$GoalTrackDetailCopyWithImpl<$Res, $Val extends GoalTrackDetail>
    implements $GoalTrackDetailCopyWith<$Res> {
  _$GoalTrackDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? subject = freezed,
    Object? target = freezed,
    Object? endDate = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? progress = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoalTrackDetailCopyWith<$Res>
    implements $GoalTrackDetailCopyWith<$Res> {
  factory _$$_GoalTrackDetailCopyWith(
          _$_GoalTrackDetail value, $Res Function(_$_GoalTrackDetail) then) =
      __$$_GoalTrackDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? subject,
      String? target,
      String? endDate,
      String? description,
      bool? isActive,
      int? progress});
}

/// @nodoc
class __$$_GoalTrackDetailCopyWithImpl<$Res>
    extends _$GoalTrackDetailCopyWithImpl<$Res, _$_GoalTrackDetail>
    implements _$$_GoalTrackDetailCopyWith<$Res> {
  __$$_GoalTrackDetailCopyWithImpl(
      _$_GoalTrackDetail _value, $Res Function(_$_GoalTrackDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? subject = freezed,
    Object? target = freezed,
    Object? endDate = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? progress = freezed,
  }) {
    return _then(_$_GoalTrackDetail(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_GoalTrackDetail extends _GoalTrackDetail {
  const _$_GoalTrackDetail(
      {this.type,
      this.subject,
      this.target,
      this.endDate,
      this.description,
      this.isActive,
      this.progress})
      : super._();

  @override
  final String? type;
  @override
  final String? subject;
  @override
  final String? target;
  @override
  final String? endDate;
  @override
  final String? description;
  @override
  final bool? isActive;
  @override
  final int? progress;

  @override
  String toString() {
    return 'GoalTrackDetail(type: $type, subject: $subject, target: $target, endDate: $endDate, description: $description, isActive: $isActive, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoalTrackDetail &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, subject, target, endDate,
      description, isActive, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoalTrackDetailCopyWith<_$_GoalTrackDetail> get copyWith =>
      __$$_GoalTrackDetailCopyWithImpl<_$_GoalTrackDetail>(this, _$identity);
}

abstract class _GoalTrackDetail extends GoalTrackDetail {
  const factory _GoalTrackDetail(
      {final String? type,
      final String? subject,
      final String? target,
      final String? endDate,
      final String? description,
      final bool? isActive,
      final int? progress}) = _$_GoalTrackDetail;
  const _GoalTrackDetail._() : super._();

  @override
  String? get type;
  @override
  String? get subject;
  @override
  String? get target;
  @override
  String? get endDate;
  @override
  String? get description;
  @override
  bool? get isActive;
  @override
  int? get progress;
  @override
  @JsonKey(ignore: true)
  _$$_GoalTrackDetailCopyWith<_$_GoalTrackDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
