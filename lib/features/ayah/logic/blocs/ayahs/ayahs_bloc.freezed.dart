// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayahs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AyahsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int surahNumber, int ayahNumber) onGetAyah,
    required TResult Function() onGetRandomAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int surahNumber, int ayahNumber)? onGetAyah,
    TResult? Function()? onGetRandomAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int surahNumber, int ayahNumber)? onGetAyah,
    TResult Function()? onGetRandomAyah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetAyah value) onGetAyah,
    required TResult Function(OnGetRandomAyah value) onGetRandomAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetAyah value)? onGetAyah,
    TResult? Function(OnGetRandomAyah value)? onGetRandomAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetAyah value)? onGetAyah,
    TResult Function(OnGetRandomAyah value)? onGetRandomAyah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahsEventCopyWith<$Res> {
  factory $AyahsEventCopyWith(
          AyahsEvent value, $Res Function(AyahsEvent) then) =
      _$AyahsEventCopyWithImpl<$Res, AyahsEvent>;
}

/// @nodoc
class _$AyahsEventCopyWithImpl<$Res, $Val extends AyahsEvent>
    implements $AyahsEventCopyWith<$Res> {
  _$AyahsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnGetAyahImplCopyWith<$Res> {
  factory _$$OnGetAyahImplCopyWith(
          _$OnGetAyahImpl value, $Res Function(_$OnGetAyahImpl) then) =
      __$$OnGetAyahImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int surahNumber, int ayahNumber});
}

/// @nodoc
class __$$OnGetAyahImplCopyWithImpl<$Res>
    extends _$AyahsEventCopyWithImpl<$Res, _$OnGetAyahImpl>
    implements _$$OnGetAyahImplCopyWith<$Res> {
  __$$OnGetAyahImplCopyWithImpl(
      _$OnGetAyahImpl _value, $Res Function(_$OnGetAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahNumber = null,
    Object? ayahNumber = null,
  }) {
    return _then(_$OnGetAyahImpl(
      null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      null == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnGetAyahImpl implements OnGetAyah {
  const _$OnGetAyahImpl(this.surahNumber, this.ayahNumber);

  @override
  final int surahNumber;
  @override
  final int ayahNumber;

  @override
  String toString() {
    return 'AyahsEvent.onGetAyah(surahNumber: $surahNumber, ayahNumber: $ayahNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetAyahImpl &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber) &&
            (identical(other.ayahNumber, ayahNumber) ||
                other.ayahNumber == ayahNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surahNumber, ayahNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetAyahImplCopyWith<_$OnGetAyahImpl> get copyWith =>
      __$$OnGetAyahImplCopyWithImpl<_$OnGetAyahImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int surahNumber, int ayahNumber) onGetAyah,
    required TResult Function() onGetRandomAyah,
  }) {
    return onGetAyah(surahNumber, ayahNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int surahNumber, int ayahNumber)? onGetAyah,
    TResult? Function()? onGetRandomAyah,
  }) {
    return onGetAyah?.call(surahNumber, ayahNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int surahNumber, int ayahNumber)? onGetAyah,
    TResult Function()? onGetRandomAyah,
    required TResult orElse(),
  }) {
    if (onGetAyah != null) {
      return onGetAyah(surahNumber, ayahNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetAyah value) onGetAyah,
    required TResult Function(OnGetRandomAyah value) onGetRandomAyah,
  }) {
    return onGetAyah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetAyah value)? onGetAyah,
    TResult? Function(OnGetRandomAyah value)? onGetRandomAyah,
  }) {
    return onGetAyah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetAyah value)? onGetAyah,
    TResult Function(OnGetRandomAyah value)? onGetRandomAyah,
    required TResult orElse(),
  }) {
    if (onGetAyah != null) {
      return onGetAyah(this);
    }
    return orElse();
  }
}

abstract class OnGetAyah implements AyahsEvent {
  const factory OnGetAyah(final int surahNumber, final int ayahNumber) =
      _$OnGetAyahImpl;

  int get surahNumber;
  int get ayahNumber;
  @JsonKey(ignore: true)
  _$$OnGetAyahImplCopyWith<_$OnGetAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnGetRandomAyahImplCopyWith<$Res> {
  factory _$$OnGetRandomAyahImplCopyWith(_$OnGetRandomAyahImpl value,
          $Res Function(_$OnGetRandomAyahImpl) then) =
      __$$OnGetRandomAyahImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetRandomAyahImplCopyWithImpl<$Res>
    extends _$AyahsEventCopyWithImpl<$Res, _$OnGetRandomAyahImpl>
    implements _$$OnGetRandomAyahImplCopyWith<$Res> {
  __$$OnGetRandomAyahImplCopyWithImpl(
      _$OnGetRandomAyahImpl _value, $Res Function(_$OnGetRandomAyahImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnGetRandomAyahImpl implements OnGetRandomAyah {
  const _$OnGetRandomAyahImpl();

  @override
  String toString() {
    return 'AyahsEvent.onGetRandomAyah()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGetRandomAyahImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int surahNumber, int ayahNumber) onGetAyah,
    required TResult Function() onGetRandomAyah,
  }) {
    return onGetRandomAyah();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int surahNumber, int ayahNumber)? onGetAyah,
    TResult? Function()? onGetRandomAyah,
  }) {
    return onGetRandomAyah?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int surahNumber, int ayahNumber)? onGetAyah,
    TResult Function()? onGetRandomAyah,
    required TResult orElse(),
  }) {
    if (onGetRandomAyah != null) {
      return onGetRandomAyah();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetAyah value) onGetAyah,
    required TResult Function(OnGetRandomAyah value) onGetRandomAyah,
  }) {
    return onGetRandomAyah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetAyah value)? onGetAyah,
    TResult? Function(OnGetRandomAyah value)? onGetRandomAyah,
  }) {
    return onGetRandomAyah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetAyah value)? onGetAyah,
    TResult Function(OnGetRandomAyah value)? onGetRandomAyah,
    required TResult orElse(),
  }) {
    if (onGetRandomAyah != null) {
      return onGetRandomAyah(this);
    }
    return orElse();
  }
}

abstract class OnGetRandomAyah implements AyahsEvent {
  const factory OnGetRandomAyah() = _$OnGetRandomAyahImpl;
}

/// @nodoc
mixin _$AyahsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Ayah ayah) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Ayah ayah)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Ayah ayah)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AyahInitial value) initial,
    required TResult Function(AyahLoading value) loading,
    required TResult Function(AyahLoaded value) loaded,
    required TResult Function(AyahError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AyahInitial value)? initial,
    TResult? Function(AyahLoading value)? loading,
    TResult? Function(AyahLoaded value)? loaded,
    TResult? Function(AyahError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AyahInitial value)? initial,
    TResult Function(AyahLoading value)? loading,
    TResult Function(AyahLoaded value)? loaded,
    TResult Function(AyahError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahsStateCopyWith<$Res> {
  factory $AyahsStateCopyWith(
          AyahsState value, $Res Function(AyahsState) then) =
      _$AyahsStateCopyWithImpl<$Res, AyahsState>;
}

/// @nodoc
class _$AyahsStateCopyWithImpl<$Res, $Val extends AyahsState>
    implements $AyahsStateCopyWith<$Res> {
  _$AyahsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AyahInitialImplCopyWith<$Res> {
  factory _$$AyahInitialImplCopyWith(
          _$AyahInitialImpl value, $Res Function(_$AyahInitialImpl) then) =
      __$$AyahInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AyahInitialImplCopyWithImpl<$Res>
    extends _$AyahsStateCopyWithImpl<$Res, _$AyahInitialImpl>
    implements _$$AyahInitialImplCopyWith<$Res> {
  __$$AyahInitialImplCopyWithImpl(
      _$AyahInitialImpl _value, $Res Function(_$AyahInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AyahInitialImpl implements AyahInitial {
  const _$AyahInitialImpl();

  @override
  String toString() {
    return 'AyahsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AyahInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Ayah ayah) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Ayah ayah)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Ayah ayah)? loaded,
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
    required TResult Function(AyahInitial value) initial,
    required TResult Function(AyahLoading value) loading,
    required TResult Function(AyahLoaded value) loaded,
    required TResult Function(AyahError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AyahInitial value)? initial,
    TResult? Function(AyahLoading value)? loading,
    TResult? Function(AyahLoaded value)? loaded,
    TResult? Function(AyahError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AyahInitial value)? initial,
    TResult Function(AyahLoading value)? loading,
    TResult Function(AyahLoaded value)? loaded,
    TResult Function(AyahError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AyahInitial implements AyahsState {
  const factory AyahInitial() = _$AyahInitialImpl;
}

/// @nodoc
abstract class _$$AyahLoadingImplCopyWith<$Res> {
  factory _$$AyahLoadingImplCopyWith(
          _$AyahLoadingImpl value, $Res Function(_$AyahLoadingImpl) then) =
      __$$AyahLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AyahLoadingImplCopyWithImpl<$Res>
    extends _$AyahsStateCopyWithImpl<$Res, _$AyahLoadingImpl>
    implements _$$AyahLoadingImplCopyWith<$Res> {
  __$$AyahLoadingImplCopyWithImpl(
      _$AyahLoadingImpl _value, $Res Function(_$AyahLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AyahLoadingImpl implements AyahLoading {
  const _$AyahLoadingImpl();

  @override
  String toString() {
    return 'AyahsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AyahLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Ayah ayah) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Ayah ayah)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Ayah ayah)? loaded,
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
    required TResult Function(AyahInitial value) initial,
    required TResult Function(AyahLoading value) loading,
    required TResult Function(AyahLoaded value) loaded,
    required TResult Function(AyahError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AyahInitial value)? initial,
    TResult? Function(AyahLoading value)? loading,
    TResult? Function(AyahLoaded value)? loaded,
    TResult? Function(AyahError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AyahInitial value)? initial,
    TResult Function(AyahLoading value)? loading,
    TResult Function(AyahLoaded value)? loaded,
    TResult Function(AyahError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AyahLoading implements AyahsState {
  const factory AyahLoading() = _$AyahLoadingImpl;
}

/// @nodoc
abstract class _$$AyahLoadedImplCopyWith<$Res> {
  factory _$$AyahLoadedImplCopyWith(
          _$AyahLoadedImpl value, $Res Function(_$AyahLoadedImpl) then) =
      __$$AyahLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Ayah ayah});

  $AyahCopyWith<$Res> get ayah;
}

/// @nodoc
class __$$AyahLoadedImplCopyWithImpl<$Res>
    extends _$AyahsStateCopyWithImpl<$Res, _$AyahLoadedImpl>
    implements _$$AyahLoadedImplCopyWith<$Res> {
  __$$AyahLoadedImplCopyWithImpl(
      _$AyahLoadedImpl _value, $Res Function(_$AyahLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayah = null,
  }) {
    return _then(_$AyahLoadedImpl(
      null == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as Ayah,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AyahCopyWith<$Res> get ayah {
    return $AyahCopyWith<$Res>(_value.ayah, (value) {
      return _then(_value.copyWith(ayah: value));
    });
  }
}

/// @nodoc

class _$AyahLoadedImpl implements AyahLoaded {
  const _$AyahLoadedImpl(this.ayah);

  @override
  final Ayah ayah;

  @override
  String toString() {
    return 'AyahsState.loaded(ayah: $ayah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahLoadedImpl &&
            (identical(other.ayah, ayah) || other.ayah == ayah));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ayah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahLoadedImplCopyWith<_$AyahLoadedImpl> get copyWith =>
      __$$AyahLoadedImplCopyWithImpl<_$AyahLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Ayah ayah) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(ayah);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Ayah ayah)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(ayah);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Ayah ayah)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(ayah);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AyahInitial value) initial,
    required TResult Function(AyahLoading value) loading,
    required TResult Function(AyahLoaded value) loaded,
    required TResult Function(AyahError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AyahInitial value)? initial,
    TResult? Function(AyahLoading value)? loading,
    TResult? Function(AyahLoaded value)? loaded,
    TResult? Function(AyahError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AyahInitial value)? initial,
    TResult Function(AyahLoading value)? loading,
    TResult Function(AyahLoaded value)? loaded,
    TResult Function(AyahError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AyahLoaded implements AyahsState {
  const factory AyahLoaded(final Ayah ayah) = _$AyahLoadedImpl;

  Ayah get ayah;
  @JsonKey(ignore: true)
  _$$AyahLoadedImplCopyWith<_$AyahLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AyahErrorImplCopyWith<$Res> {
  factory _$$AyahErrorImplCopyWith(
          _$AyahErrorImpl value, $Res Function(_$AyahErrorImpl) then) =
      __$$AyahErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AyahErrorImplCopyWithImpl<$Res>
    extends _$AyahsStateCopyWithImpl<$Res, _$AyahErrorImpl>
    implements _$$AyahErrorImplCopyWith<$Res> {
  __$$AyahErrorImplCopyWithImpl(
      _$AyahErrorImpl _value, $Res Function(_$AyahErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AyahErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AyahErrorImpl implements AyahError {
  const _$AyahErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AyahsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahErrorImplCopyWith<_$AyahErrorImpl> get copyWith =>
      __$$AyahErrorImplCopyWithImpl<_$AyahErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Ayah ayah) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Ayah ayah)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Ayah ayah)? loaded,
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
    required TResult Function(AyahInitial value) initial,
    required TResult Function(AyahLoading value) loading,
    required TResult Function(AyahLoaded value) loaded,
    required TResult Function(AyahError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AyahInitial value)? initial,
    TResult? Function(AyahLoading value)? loading,
    TResult? Function(AyahLoaded value)? loaded,
    TResult? Function(AyahError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AyahInitial value)? initial,
    TResult Function(AyahLoading value)? loading,
    TResult Function(AyahLoaded value)? loaded,
    TResult Function(AyahError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AyahError implements AyahsState {
  const factory AyahError(final String message) = _$AyahErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AyahErrorImplCopyWith<_$AyahErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
