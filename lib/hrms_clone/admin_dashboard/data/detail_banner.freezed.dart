// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailBanner {
  IconData? get icon => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailBannerCopyWith<DetailBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailBannerCopyWith<$Res> {
  factory $DetailBannerCopyWith(
          DetailBanner value, $Res Function(DetailBanner) then) =
      _$DetailBannerCopyWithImpl<$Res, DetailBanner>;
  @useResult
  $Res call({IconData? icon, int? count, String? title});
}

/// @nodoc
class _$DetailBannerCopyWithImpl<$Res, $Val extends DetailBanner>
    implements $DetailBannerCopyWith<$Res> {
  _$DetailBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? count = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailBannerCopyWith<$Res>
    implements $DetailBannerCopyWith<$Res> {
  factory _$$_DetailBannerCopyWith(
          _$_DetailBanner value, $Res Function(_$_DetailBanner) then) =
      __$$_DetailBannerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData? icon, int? count, String? title});
}

/// @nodoc
class __$$_DetailBannerCopyWithImpl<$Res>
    extends _$DetailBannerCopyWithImpl<$Res, _$_DetailBanner>
    implements _$$_DetailBannerCopyWith<$Res> {
  __$$_DetailBannerCopyWithImpl(
      _$_DetailBanner _value, $Res Function(_$_DetailBanner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? count = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_DetailBanner(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DetailBanner extends _DetailBanner {
  const _$_DetailBanner({this.icon, this.count, this.title}) : super._();

  @override
  final IconData? icon;
  @override
  final int? count;
  @override
  final String? title;

  @override
  String toString() {
    return 'DetailBanner(icon: $icon, count: $count, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailBanner &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, count, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailBannerCopyWith<_$_DetailBanner> get copyWith =>
      __$$_DetailBannerCopyWithImpl<_$_DetailBanner>(this, _$identity);
}

abstract class _DetailBanner extends DetailBanner {
  const factory _DetailBanner(
      {final IconData? icon,
      final int? count,
      final String? title}) = _$_DetailBanner;
  const _DetailBanner._() : super._();

  @override
  IconData? get icon;
  @override
  int? get count;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_DetailBannerCopyWith<_$_DetailBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RateChanged {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increased,
    required TResult Function() decreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increased,
    TResult? Function()? decreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increased,
    TResult Function()? decreased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increased value) increased,
    required TResult Function(_Decreased value) decreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Increased value)? increased,
    TResult? Function(_Decreased value)? decreased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increased value)? increased,
    TResult Function(_Decreased value)? decreased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateChangedCopyWith<$Res> {
  factory $RateChangedCopyWith(
          RateChanged value, $Res Function(RateChanged) then) =
      _$RateChangedCopyWithImpl<$Res, RateChanged>;
}

/// @nodoc
class _$RateChangedCopyWithImpl<$Res, $Val extends RateChanged>
    implements $RateChangedCopyWith<$Res> {
  _$RateChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IncreasedCopyWith<$Res> {
  factory _$$_IncreasedCopyWith(
          _$_Increased value, $Res Function(_$_Increased) then) =
      __$$_IncreasedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncreasedCopyWithImpl<$Res>
    extends _$RateChangedCopyWithImpl<$Res, _$_Increased>
    implements _$$_IncreasedCopyWith<$Res> {
  __$$_IncreasedCopyWithImpl(
      _$_Increased _value, $Res Function(_$_Increased) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Increased extends _Increased {
  const _$_Increased() : super._();

  @override
  String toString() {
    return 'RateChanged.increased()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Increased);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increased,
    required TResult Function() decreased,
  }) {
    return increased();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increased,
    TResult? Function()? decreased,
  }) {
    return increased?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increased,
    TResult Function()? decreased,
    required TResult orElse(),
  }) {
    if (increased != null) {
      return increased();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increased value) increased,
    required TResult Function(_Decreased value) decreased,
  }) {
    return increased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Increased value)? increased,
    TResult? Function(_Decreased value)? decreased,
  }) {
    return increased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increased value)? increased,
    TResult Function(_Decreased value)? decreased,
    required TResult orElse(),
  }) {
    if (increased != null) {
      return increased(this);
    }
    return orElse();
  }
}

abstract class _Increased extends RateChanged {
  const factory _Increased() = _$_Increased;
  const _Increased._() : super._();
}

/// @nodoc
abstract class _$$_DecreasedCopyWith<$Res> {
  factory _$$_DecreasedCopyWith(
          _$_Decreased value, $Res Function(_$_Decreased) then) =
      __$$_DecreasedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DecreasedCopyWithImpl<$Res>
    extends _$RateChangedCopyWithImpl<$Res, _$_Decreased>
    implements _$$_DecreasedCopyWith<$Res> {
  __$$_DecreasedCopyWithImpl(
      _$_Decreased _value, $Res Function(_$_Decreased) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Decreased extends _Decreased {
  const _$_Decreased() : super._();

  @override
  String toString() {
    return 'RateChanged.decreased()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Decreased);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increased,
    required TResult Function() decreased,
  }) {
    return decreased();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increased,
    TResult? Function()? decreased,
  }) {
    return decreased?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increased,
    TResult Function()? decreased,
    required TResult orElse(),
  }) {
    if (decreased != null) {
      return decreased();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increased value) increased,
    required TResult Function(_Decreased value) decreased,
  }) {
    return decreased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Increased value)? increased,
    TResult? Function(_Decreased value)? decreased,
  }) {
    return decreased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increased value)? increased,
    TResult Function(_Decreased value)? decreased,
    required TResult orElse(),
  }) {
    if (decreased != null) {
      return decreased(this);
    }
    return orElse();
  }
}

abstract class _Decreased extends RateChanged {
  const factory _Decreased() = _$_Decreased;
  const _Decreased._() : super._();
}

/// @nodoc
mixin _$StatusChangeBanner {
  String? get title => throw _privateConstructorUsedError;
  double? get rateChange => throw _privateConstructorUsedError;
  RateChanged? get valueChanged => throw _privateConstructorUsedError;
  bool get isPriceCount => throw _privateConstructorUsedError;
  int? get currentCount => throw _privateConstructorUsedError;
  String? get totalOrPrevious => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatusChangeBannerCopyWith<StatusChangeBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusChangeBannerCopyWith<$Res> {
  factory $StatusChangeBannerCopyWith(
          StatusChangeBanner value, $Res Function(StatusChangeBanner) then) =
      _$StatusChangeBannerCopyWithImpl<$Res, StatusChangeBanner>;
  @useResult
  $Res call(
      {String? title,
      double? rateChange,
      RateChanged? valueChanged,
      bool isPriceCount,
      int? currentCount,
      String? totalOrPrevious,
      int? totalCount});

  $RateChangedCopyWith<$Res>? get valueChanged;
}

/// @nodoc
class _$StatusChangeBannerCopyWithImpl<$Res, $Val extends StatusChangeBanner>
    implements $StatusChangeBannerCopyWith<$Res> {
  _$StatusChangeBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? rateChange = freezed,
    Object? valueChanged = freezed,
    Object? isPriceCount = null,
    Object? currentCount = freezed,
    Object? totalOrPrevious = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rateChange: freezed == rateChange
          ? _value.rateChange
          : rateChange // ignore: cast_nullable_to_non_nullable
              as double?,
      valueChanged: freezed == valueChanged
          ? _value.valueChanged
          : valueChanged // ignore: cast_nullable_to_non_nullable
              as RateChanged?,
      isPriceCount: null == isPriceCount
          ? _value.isPriceCount
          : isPriceCount // ignore: cast_nullable_to_non_nullable
              as bool,
      currentCount: freezed == currentCount
          ? _value.currentCount
          : currentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalOrPrevious: freezed == totalOrPrevious
          ? _value.totalOrPrevious
          : totalOrPrevious // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RateChangedCopyWith<$Res>? get valueChanged {
    if (_value.valueChanged == null) {
      return null;
    }

    return $RateChangedCopyWith<$Res>(_value.valueChanged!, (value) {
      return _then(_value.copyWith(valueChanged: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatusChangeBannerCopyWith<$Res>
    implements $StatusChangeBannerCopyWith<$Res> {
  factory _$$_StatusChangeBannerCopyWith(_$_StatusChangeBanner value,
          $Res Function(_$_StatusChangeBanner) then) =
      __$$_StatusChangeBannerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      double? rateChange,
      RateChanged? valueChanged,
      bool isPriceCount,
      int? currentCount,
      String? totalOrPrevious,
      int? totalCount});

  @override
  $RateChangedCopyWith<$Res>? get valueChanged;
}

/// @nodoc
class __$$_StatusChangeBannerCopyWithImpl<$Res>
    extends _$StatusChangeBannerCopyWithImpl<$Res, _$_StatusChangeBanner>
    implements _$$_StatusChangeBannerCopyWith<$Res> {
  __$$_StatusChangeBannerCopyWithImpl(
      _$_StatusChangeBanner _value, $Res Function(_$_StatusChangeBanner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? rateChange = freezed,
    Object? valueChanged = freezed,
    Object? isPriceCount = null,
    Object? currentCount = freezed,
    Object? totalOrPrevious = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_$_StatusChangeBanner(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rateChange: freezed == rateChange
          ? _value.rateChange
          : rateChange // ignore: cast_nullable_to_non_nullable
              as double?,
      valueChanged: freezed == valueChanged
          ? _value.valueChanged
          : valueChanged // ignore: cast_nullable_to_non_nullable
              as RateChanged?,
      isPriceCount: null == isPriceCount
          ? _value.isPriceCount
          : isPriceCount // ignore: cast_nullable_to_non_nullable
              as bool,
      currentCount: freezed == currentCount
          ? _value.currentCount
          : currentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalOrPrevious: freezed == totalOrPrevious
          ? _value.totalOrPrevious
          : totalOrPrevious // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_StatusChangeBanner extends _StatusChangeBanner {
  const _$_StatusChangeBanner(
      {this.title,
      this.rateChange,
      this.valueChanged,
      this.isPriceCount = false,
      this.currentCount,
      this.totalOrPrevious,
      this.totalCount})
      : super._();

  @override
  final String? title;
  @override
  final double? rateChange;
  @override
  final RateChanged? valueChanged;
  @override
  @JsonKey()
  final bool isPriceCount;
  @override
  final int? currentCount;
  @override
  final String? totalOrPrevious;
  @override
  final int? totalCount;

  @override
  String toString() {
    return 'StatusChangeBanner(title: $title, rateChange: $rateChange, valueChanged: $valueChanged, isPriceCount: $isPriceCount, currentCount: $currentCount, totalOrPrevious: $totalOrPrevious, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusChangeBanner &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rateChange, rateChange) ||
                other.rateChange == rateChange) &&
            (identical(other.valueChanged, valueChanged) ||
                other.valueChanged == valueChanged) &&
            (identical(other.isPriceCount, isPriceCount) ||
                other.isPriceCount == isPriceCount) &&
            (identical(other.currentCount, currentCount) ||
                other.currentCount == currentCount) &&
            (identical(other.totalOrPrevious, totalOrPrevious) ||
                other.totalOrPrevious == totalOrPrevious) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, rateChange, valueChanged,
      isPriceCount, currentCount, totalOrPrevious, totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusChangeBannerCopyWith<_$_StatusChangeBanner> get copyWith =>
      __$$_StatusChangeBannerCopyWithImpl<_$_StatusChangeBanner>(
          this, _$identity);
}

abstract class _StatusChangeBanner extends StatusChangeBanner {
  const factory _StatusChangeBanner(
      {final String? title,
      final double? rateChange,
      final RateChanged? valueChanged,
      final bool isPriceCount,
      final int? currentCount,
      final String? totalOrPrevious,
      final int? totalCount}) = _$_StatusChangeBanner;
  const _StatusChangeBanner._() : super._();

  @override
  String? get title;
  @override
  double? get rateChange;
  @override
  RateChanged? get valueChanged;
  @override
  bool get isPriceCount;
  @override
  int? get currentCount;
  @override
  String? get totalOrPrevious;
  @override
  int? get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$_StatusChangeBannerCopyWith<_$_StatusChangeBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectDetail {
  String? get title => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get openTask => throw _privateConstructorUsedError;
  int? get completedTask => throw _privateConstructorUsedError;
  double? get levelBar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectDetailCopyWith<ProjectDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailCopyWith<$Res> {
  factory $ProjectDetailCopyWith(
          ProjectDetail value, $Res Function(ProjectDetail) then) =
      _$ProjectDetailCopyWithImpl<$Res, ProjectDetail>;
  @useResult
  $Res call(
      {String? title,
      int? id,
      int? openTask,
      int? completedTask,
      double? levelBar});
}

/// @nodoc
class _$ProjectDetailCopyWithImpl<$Res, $Val extends ProjectDetail>
    implements $ProjectDetailCopyWith<$Res> {
  _$ProjectDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? openTask = freezed,
    Object? completedTask = freezed,
    Object? levelBar = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      openTask: freezed == openTask
          ? _value.openTask
          : openTask // ignore: cast_nullable_to_non_nullable
              as int?,
      completedTask: freezed == completedTask
          ? _value.completedTask
          : completedTask // ignore: cast_nullable_to_non_nullable
              as int?,
      levelBar: freezed == levelBar
          ? _value.levelBar
          : levelBar // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectDetailCopyWith<$Res>
    implements $ProjectDetailCopyWith<$Res> {
  factory _$$_ProjectDetailCopyWith(
          _$_ProjectDetail value, $Res Function(_$_ProjectDetail) then) =
      __$$_ProjectDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      int? id,
      int? openTask,
      int? completedTask,
      double? levelBar});
}

/// @nodoc
class __$$_ProjectDetailCopyWithImpl<$Res>
    extends _$ProjectDetailCopyWithImpl<$Res, _$_ProjectDetail>
    implements _$$_ProjectDetailCopyWith<$Res> {
  __$$_ProjectDetailCopyWithImpl(
      _$_ProjectDetail _value, $Res Function(_$_ProjectDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? openTask = freezed,
    Object? completedTask = freezed,
    Object? levelBar = freezed,
  }) {
    return _then(_$_ProjectDetail(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      openTask: freezed == openTask
          ? _value.openTask
          : openTask // ignore: cast_nullable_to_non_nullable
              as int?,
      completedTask: freezed == completedTask
          ? _value.completedTask
          : completedTask // ignore: cast_nullable_to_non_nullable
              as int?,
      levelBar: freezed == levelBar
          ? _value.levelBar
          : levelBar // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_ProjectDetail extends _ProjectDetail {
  const _$_ProjectDetail(
      {this.title, this.id, this.openTask, this.completedTask, this.levelBar})
      : super._();

  @override
  final String? title;
  @override
  final int? id;
  @override
  final int? openTask;
  @override
  final int? completedTask;
  @override
  final double? levelBar;

  @override
  String toString() {
    return 'ProjectDetail(title: $title, id: $id, openTask: $openTask, completedTask: $completedTask, levelBar: $levelBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectDetail &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.openTask, openTask) ||
                other.openTask == openTask) &&
            (identical(other.completedTask, completedTask) ||
                other.completedTask == completedTask) &&
            (identical(other.levelBar, levelBar) ||
                other.levelBar == levelBar));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, id, openTask, completedTask, levelBar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectDetailCopyWith<_$_ProjectDetail> get copyWith =>
      __$$_ProjectDetailCopyWithImpl<_$_ProjectDetail>(this, _$identity);
}

abstract class _ProjectDetail extends ProjectDetail {
  const factory _ProjectDetail(
      {final String? title,
      final int? id,
      final int? openTask,
      final int? completedTask,
      final double? levelBar}) = _$_ProjectDetail;
  const _ProjectDetail._() : super._();

  @override
  String? get title;
  @override
  int? get id;
  @override
  int? get openTask;
  @override
  int? get completedTask;
  @override
  double? get levelBar;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectDetailCopyWith<_$_ProjectDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectDetails {
  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectDetailsCopyWith<ProjectDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailsCopyWith<$Res> {
  factory $ProjectDetailsCopyWith(
          ProjectDetails value, $Res Function(ProjectDetails) then) =
      _$ProjectDetailsCopyWithImpl<$Res, ProjectDetails>;
  @useResult
  $Res call({String title, int id});
}

/// @nodoc
class _$ProjectDetailsCopyWithImpl<$Res, $Val extends ProjectDetails>
    implements $ProjectDetailsCopyWith<$Res> {
  _$ProjectDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectDetailsCopyWith<$Res>
    implements $ProjectDetailsCopyWith<$Res> {
  factory _$$_ProjectDetailsCopyWith(
          _$_ProjectDetails value, $Res Function(_$_ProjectDetails) then) =
      __$$_ProjectDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int id});
}

/// @nodoc
class __$$_ProjectDetailsCopyWithImpl<$Res>
    extends _$ProjectDetailsCopyWithImpl<$Res, _$_ProjectDetails>
    implements _$$_ProjectDetailsCopyWith<$Res> {
  __$$_ProjectDetailsCopyWithImpl(
      _$_ProjectDetails _value, $Res Function(_$_ProjectDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
  }) {
    return _then(_$_ProjectDetails(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProjectDetails extends _ProjectDetails {
  const _$_ProjectDetails({required this.title, required this.id}) : super._();

  @override
  final String title;
  @override
  final int id;

  @override
  String toString() {
    return 'ProjectDetails(title: $title, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectDetails &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectDetailsCopyWith<_$_ProjectDetails> get copyWith =>
      __$$_ProjectDetailsCopyWithImpl<_$_ProjectDetails>(this, _$identity);
}

abstract class _ProjectDetails extends ProjectDetails {
  const factory _ProjectDetails(
      {required final String title, required final int id}) = _$_ProjectDetails;
  const _ProjectDetails._() : super._();

  @override
  String get title;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectDetailsCopyWith<_$_ProjectDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
