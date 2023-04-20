// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_status_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkingStatusDetail {
  IconData? get icon => throw _privateConstructorUsedError;
  String? get workStatus => throw _privateConstructorUsedError;
  AssetImage? get person => throw _privateConstructorUsedError;
  List<AssetImage>? get persons => throw _privateConstructorUsedError;
  bool? get showPerson => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkingStatusDetailCopyWith<WorkingStatusDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingStatusDetailCopyWith<$Res> {
  factory $WorkingStatusDetailCopyWith(
          WorkingStatusDetail value, $Res Function(WorkingStatusDetail) then) =
      _$WorkingStatusDetailCopyWithImpl<$Res, WorkingStatusDetail>;
  @useResult
  $Res call(
      {IconData? icon,
      String? workStatus,
      AssetImage? person,
      List<AssetImage>? persons,
      bool? showPerson});
}

/// @nodoc
class _$WorkingStatusDetailCopyWithImpl<$Res, $Val extends WorkingStatusDetail>
    implements $WorkingStatusDetailCopyWith<$Res> {
  _$WorkingStatusDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? workStatus = freezed,
    Object? person = freezed,
    Object? persons = freezed,
    Object? showPerson = freezed,
  }) {
    return _then(_value.copyWith(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      workStatus: freezed == workStatus
          ? _value.workStatus
          : workStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as AssetImage?,
      persons: freezed == persons
          ? _value.persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<AssetImage>?,
      showPerson: freezed == showPerson
          ? _value.showPerson
          : showPerson // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkingStatusDetailCopyWith<$Res>
    implements $WorkingStatusDetailCopyWith<$Res> {
  factory _$$_WorkingStatusDetailCopyWith(_$_WorkingStatusDetail value,
          $Res Function(_$_WorkingStatusDetail) then) =
      __$$_WorkingStatusDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IconData? icon,
      String? workStatus,
      AssetImage? person,
      List<AssetImage>? persons,
      bool? showPerson});
}

/// @nodoc
class __$$_WorkingStatusDetailCopyWithImpl<$Res>
    extends _$WorkingStatusDetailCopyWithImpl<$Res, _$_WorkingStatusDetail>
    implements _$$_WorkingStatusDetailCopyWith<$Res> {
  __$$_WorkingStatusDetailCopyWithImpl(_$_WorkingStatusDetail _value,
      $Res Function(_$_WorkingStatusDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? workStatus = freezed,
    Object? person = freezed,
    Object? persons = freezed,
    Object? showPerson = freezed,
  }) {
    return _then(_$_WorkingStatusDetail(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      workStatus: freezed == workStatus
          ? _value.workStatus
          : workStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as AssetImage?,
      persons: freezed == persons
          ? _value._persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<AssetImage>?,
      showPerson: freezed == showPerson
          ? _value.showPerson
          : showPerson // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_WorkingStatusDetail extends _WorkingStatusDetail {
  const _$_WorkingStatusDetail(
      {this.icon,
      this.workStatus,
      this.person,
      final List<AssetImage>? persons,
      this.showPerson})
      : _persons = persons,
        super._();

  @override
  final IconData? icon;
  @override
  final String? workStatus;
  @override
  final AssetImage? person;
  final List<AssetImage>? _persons;
  @override
  List<AssetImage>? get persons {
    final value = _persons;
    if (value == null) return null;
    if (_persons is EqualUnmodifiableListView) return _persons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? showPerson;

  @override
  String toString() {
    return 'WorkingStatusDetail(icon: $icon, workStatus: $workStatus, person: $person, persons: $persons, showPerson: $showPerson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkingStatusDetail &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.workStatus, workStatus) ||
                other.workStatus == workStatus) &&
            (identical(other.person, person) || other.person == person) &&
            const DeepCollectionEquality().equals(other._persons, _persons) &&
            (identical(other.showPerson, showPerson) ||
                other.showPerson == showPerson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, workStatus, person,
      const DeepCollectionEquality().hash(_persons), showPerson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkingStatusDetailCopyWith<_$_WorkingStatusDetail> get copyWith =>
      __$$_WorkingStatusDetailCopyWithImpl<_$_WorkingStatusDetail>(
          this, _$identity);
}

abstract class _WorkingStatusDetail extends WorkingStatusDetail {
  const factory _WorkingStatusDetail(
      {final IconData? icon,
      final String? workStatus,
      final AssetImage? person,
      final List<AssetImage>? persons,
      final bool? showPerson}) = _$_WorkingStatusDetail;
  const _WorkingStatusDetail._() : super._();

  @override
  IconData? get icon;
  @override
  String? get workStatus;
  @override
  AssetImage? get person;
  @override
  List<AssetImage>? get persons;
  @override
  bool? get showPerson;
  @override
  @JsonKey(ignore: true)
  _$$_WorkingStatusDetailCopyWith<_$_WorkingStatusDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
