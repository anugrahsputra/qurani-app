// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_time_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PrayerTimeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(Position location, PrayerTimes prayerTime)
        prayerTimesLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(PrayerTimeLoading value) loading,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationLoaded value) prayerTimesLoaded,
    required TResult Function(LocationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(PrayerTimeLoading value)? loading,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationLoaded value)? prayerTimesLoaded,
    TResult? Function(LocationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(PrayerTimeLoading value)? loading,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationLoaded value)? prayerTimesLoaded,
    TResult Function(LocationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerTimeStateCopyWith<$Res> {
  factory $PrayerTimeStateCopyWith(
          PrayerTimeState value, $Res Function(PrayerTimeState) then) =
      _$PrayerTimeStateCopyWithImpl<$Res, PrayerTimeState>;
}

/// @nodoc
class _$PrayerTimeStateCopyWithImpl<$Res, $Val extends PrayerTimeState>
    implements $PrayerTimeStateCopyWith<$Res> {
  _$PrayerTimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationInitialImplCopyWith<$Res> {
  factory _$$LocationInitialImplCopyWith(_$LocationInitialImpl value,
          $Res Function(_$LocationInitialImpl) then) =
      __$$LocationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationInitialImplCopyWithImpl<$Res>
    extends _$PrayerTimeStateCopyWithImpl<$Res, _$LocationInitialImpl>
    implements _$$LocationInitialImplCopyWith<$Res> {
  __$$LocationInitialImplCopyWithImpl(
      _$LocationInitialImpl _value, $Res Function(_$LocationInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationInitialImpl implements LocationInitial {
  const _$LocationInitialImpl();

  @override
  String toString() {
    return 'PrayerTimeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(Position location, PrayerTimes prayerTime)
        prayerTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(PrayerTimeLoading value) loading,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationLoaded value) prayerTimesLoaded,
    required TResult Function(LocationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(PrayerTimeLoading value)? loading,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationLoaded value)? prayerTimesLoaded,
    TResult? Function(LocationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(PrayerTimeLoading value)? loading,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationLoaded value)? prayerTimesLoaded,
    TResult Function(LocationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationInitial implements PrayerTimeState {
  const factory LocationInitial() = _$LocationInitialImpl;
}

/// @nodoc
abstract class _$$PrayerTimeLoadingImplCopyWith<$Res> {
  factory _$$PrayerTimeLoadingImplCopyWith(_$PrayerTimeLoadingImpl value,
          $Res Function(_$PrayerTimeLoadingImpl) then) =
      __$$PrayerTimeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrayerTimeLoadingImplCopyWithImpl<$Res>
    extends _$PrayerTimeStateCopyWithImpl<$Res, _$PrayerTimeLoadingImpl>
    implements _$$PrayerTimeLoadingImplCopyWith<$Res> {
  __$$PrayerTimeLoadingImplCopyWithImpl(_$PrayerTimeLoadingImpl _value,
      $Res Function(_$PrayerTimeLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PrayerTimeLoadingImpl implements PrayerTimeLoading {
  const _$PrayerTimeLoadingImpl();

  @override
  String toString() {
    return 'PrayerTimeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PrayerTimeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(Position location, PrayerTimes prayerTime)
        prayerTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(PrayerTimeLoading value) loading,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationLoaded value) prayerTimesLoaded,
    required TResult Function(LocationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(PrayerTimeLoading value)? loading,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationLoaded value)? prayerTimesLoaded,
    TResult? Function(LocationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(PrayerTimeLoading value)? loading,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationLoaded value)? prayerTimesLoaded,
    TResult Function(LocationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PrayerTimeLoading implements PrayerTimeState {
  const factory PrayerTimeLoading() = _$PrayerTimeLoadingImpl;
}

/// @nodoc
abstract class _$$LocationPermissionDeniedImplCopyWith<$Res> {
  factory _$$LocationPermissionDeniedImplCopyWith(
          _$LocationPermissionDeniedImpl value,
          $Res Function(_$LocationPermissionDeniedImpl) then) =
      __$$LocationPermissionDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationPermissionDeniedImplCopyWithImpl<$Res>
    extends _$PrayerTimeStateCopyWithImpl<$Res, _$LocationPermissionDeniedImpl>
    implements _$$LocationPermissionDeniedImplCopyWith<$Res> {
  __$$LocationPermissionDeniedImplCopyWithImpl(
      _$LocationPermissionDeniedImpl _value,
      $Res Function(_$LocationPermissionDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationPermissionDeniedImpl implements LocationPermissionDenied {
  const _$LocationPermissionDeniedImpl();

  @override
  String toString() {
    return 'PrayerTimeState.permissionDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPermissionDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(Position location, PrayerTimes prayerTime)
        prayerTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return permissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(PrayerTimeLoading value) loading,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationLoaded value) prayerTimesLoaded,
    required TResult Function(LocationError value) error,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(PrayerTimeLoading value)? loading,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationLoaded value)? prayerTimesLoaded,
    TResult? Function(LocationError value)? error,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(PrayerTimeLoading value)? loading,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationLoaded value)? prayerTimesLoaded,
    TResult Function(LocationError value)? error,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class LocationPermissionDenied implements PrayerTimeState {
  const factory LocationPermissionDenied() = _$LocationPermissionDeniedImpl;
}

/// @nodoc
abstract class _$$LocationLoadedImplCopyWith<$Res> {
  factory _$$LocationLoadedImplCopyWith(_$LocationLoadedImpl value,
          $Res Function(_$LocationLoadedImpl) then) =
      __$$LocationLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position location, PrayerTimes prayerTime});
}

/// @nodoc
class __$$LocationLoadedImplCopyWithImpl<$Res>
    extends _$PrayerTimeStateCopyWithImpl<$Res, _$LocationLoadedImpl>
    implements _$$LocationLoadedImplCopyWith<$Res> {
  __$$LocationLoadedImplCopyWithImpl(
      _$LocationLoadedImpl _value, $Res Function(_$LocationLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? prayerTime = null,
  }) {
    return _then(_$LocationLoadedImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Position,
      null == prayerTime
          ? _value.prayerTime
          : prayerTime // ignore: cast_nullable_to_non_nullable
              as PrayerTimes,
    ));
  }
}

/// @nodoc

class _$LocationLoadedImpl implements LocationLoaded {
  const _$LocationLoadedImpl(this.location, this.prayerTime);

  @override
  final Position location;
  @override
  final PrayerTimes prayerTime;

  @override
  String toString() {
    return 'PrayerTimeState.prayerTimesLoaded(location: $location, prayerTime: $prayerTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationLoadedImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.prayerTime, prayerTime) ||
                other.prayerTime == prayerTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, prayerTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationLoadedImplCopyWith<_$LocationLoadedImpl> get copyWith =>
      __$$LocationLoadedImplCopyWithImpl<_$LocationLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(Position location, PrayerTimes prayerTime)
        prayerTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return prayerTimesLoaded(location, prayerTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return prayerTimesLoaded?.call(location, prayerTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (prayerTimesLoaded != null) {
      return prayerTimesLoaded(location, prayerTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(PrayerTimeLoading value) loading,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationLoaded value) prayerTimesLoaded,
    required TResult Function(LocationError value) error,
  }) {
    return prayerTimesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(PrayerTimeLoading value)? loading,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationLoaded value)? prayerTimesLoaded,
    TResult? Function(LocationError value)? error,
  }) {
    return prayerTimesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(PrayerTimeLoading value)? loading,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationLoaded value)? prayerTimesLoaded,
    TResult Function(LocationError value)? error,
    required TResult orElse(),
  }) {
    if (prayerTimesLoaded != null) {
      return prayerTimesLoaded(this);
    }
    return orElse();
  }
}

abstract class LocationLoaded implements PrayerTimeState {
  const factory LocationLoaded(
          final Position location, final PrayerTimes prayerTime) =
      _$LocationLoadedImpl;

  Position get location;
  PrayerTimes get prayerTime;
  @JsonKey(ignore: true)
  _$$LocationLoadedImplCopyWith<_$LocationLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationErrorImplCopyWith<$Res> {
  factory _$$LocationErrorImplCopyWith(
          _$LocationErrorImpl value, $Res Function(_$LocationErrorImpl) then) =
      __$$LocationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LocationErrorImplCopyWithImpl<$Res>
    extends _$PrayerTimeStateCopyWithImpl<$Res, _$LocationErrorImpl>
    implements _$$LocationErrorImplCopyWith<$Res> {
  __$$LocationErrorImplCopyWithImpl(
      _$LocationErrorImpl _value, $Res Function(_$LocationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LocationErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationErrorImpl implements LocationError {
  const _$LocationErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PrayerTimeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationErrorImplCopyWith<_$LocationErrorImpl> get copyWith =>
      __$$LocationErrorImplCopyWithImpl<_$LocationErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(Position location, PrayerTimes prayerTime)
        prayerTimesLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(Position location, PrayerTimes prayerTime)?
        prayerTimesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationInitial value) initial,
    required TResult Function(PrayerTimeLoading value) loading,
    required TResult Function(LocationPermissionDenied value) permissionDenied,
    required TResult Function(LocationLoaded value) prayerTimesLoaded,
    required TResult Function(LocationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationInitial value)? initial,
    TResult? Function(PrayerTimeLoading value)? loading,
    TResult? Function(LocationPermissionDenied value)? permissionDenied,
    TResult? Function(LocationLoaded value)? prayerTimesLoaded,
    TResult? Function(LocationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationInitial value)? initial,
    TResult Function(PrayerTimeLoading value)? loading,
    TResult Function(LocationPermissionDenied value)? permissionDenied,
    TResult Function(LocationLoaded value)? prayerTimesLoaded,
    TResult Function(LocationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocationError implements PrayerTimeState {
  const factory LocationError(final String message) = _$LocationErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LocationErrorImplCopyWith<_$LocationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
