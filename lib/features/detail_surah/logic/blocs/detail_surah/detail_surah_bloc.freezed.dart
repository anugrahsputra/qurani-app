// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_surah_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailSurahEvent {
  int get surahNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int surahNumber) onGetDetail,
    required TResult Function(int surahNumber) onGetSurahAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int surahNumber)? onGetDetail,
    TResult? Function(int surahNumber)? onGetSurahAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int surahNumber)? onGetDetail,
    TResult Function(int surahNumber)? onGetSurahAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetDetail value) onGetDetail,
    required TResult Function(OnGetSurahAudio value) onGetSurahAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetDetail value)? onGetDetail,
    TResult? Function(OnGetSurahAudio value)? onGetSurahAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetDetail value)? onGetDetail,
    TResult Function(OnGetSurahAudio value)? onGetSurahAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailSurahEventCopyWith<DetailSurahEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSurahEventCopyWith<$Res> {
  factory $DetailSurahEventCopyWith(
          DetailSurahEvent value, $Res Function(DetailSurahEvent) then) =
      _$DetailSurahEventCopyWithImpl<$Res, DetailSurahEvent>;
  @useResult
  $Res call({int surahNumber});
}

/// @nodoc
class _$DetailSurahEventCopyWithImpl<$Res, $Val extends DetailSurahEvent>
    implements $DetailSurahEventCopyWith<$Res> {
  _$DetailSurahEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahNumber = null,
  }) {
    return _then(_value.copyWith(
      surahNumber: null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnGetDetailImplCopyWith<$Res>
    implements $DetailSurahEventCopyWith<$Res> {
  factory _$$OnGetDetailImplCopyWith(
          _$OnGetDetailImpl value, $Res Function(_$OnGetDetailImpl) then) =
      __$$OnGetDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int surahNumber});
}

/// @nodoc
class __$$OnGetDetailImplCopyWithImpl<$Res>
    extends _$DetailSurahEventCopyWithImpl<$Res, _$OnGetDetailImpl>
    implements _$$OnGetDetailImplCopyWith<$Res> {
  __$$OnGetDetailImplCopyWithImpl(
      _$OnGetDetailImpl _value, $Res Function(_$OnGetDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahNumber = null,
  }) {
    return _then(_$OnGetDetailImpl(
      null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnGetDetailImpl implements OnGetDetail {
  const _$OnGetDetailImpl(this.surahNumber);

  @override
  final int surahNumber;

  @override
  String toString() {
    return 'DetailSurahEvent.onGetDetail(surahNumber: $surahNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetDetailImpl &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surahNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetDetailImplCopyWith<_$OnGetDetailImpl> get copyWith =>
      __$$OnGetDetailImplCopyWithImpl<_$OnGetDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int surahNumber) onGetDetail,
    required TResult Function(int surahNumber) onGetSurahAudio,
  }) {
    return onGetDetail(surahNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int surahNumber)? onGetDetail,
    TResult? Function(int surahNumber)? onGetSurahAudio,
  }) {
    return onGetDetail?.call(surahNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int surahNumber)? onGetDetail,
    TResult Function(int surahNumber)? onGetSurahAudio,
    required TResult orElse(),
  }) {
    if (onGetDetail != null) {
      return onGetDetail(surahNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetDetail value) onGetDetail,
    required TResult Function(OnGetSurahAudio value) onGetSurahAudio,
  }) {
    return onGetDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetDetail value)? onGetDetail,
    TResult? Function(OnGetSurahAudio value)? onGetSurahAudio,
  }) {
    return onGetDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetDetail value)? onGetDetail,
    TResult Function(OnGetSurahAudio value)? onGetSurahAudio,
    required TResult orElse(),
  }) {
    if (onGetDetail != null) {
      return onGetDetail(this);
    }
    return orElse();
  }
}

abstract class OnGetDetail implements DetailSurahEvent {
  const factory OnGetDetail(final int surahNumber) = _$OnGetDetailImpl;

  @override
  int get surahNumber;
  @override
  @JsonKey(ignore: true)
  _$$OnGetDetailImplCopyWith<_$OnGetDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnGetSurahAudioImplCopyWith<$Res>
    implements $DetailSurahEventCopyWith<$Res> {
  factory _$$OnGetSurahAudioImplCopyWith(_$OnGetSurahAudioImpl value,
          $Res Function(_$OnGetSurahAudioImpl) then) =
      __$$OnGetSurahAudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int surahNumber});
}

/// @nodoc
class __$$OnGetSurahAudioImplCopyWithImpl<$Res>
    extends _$DetailSurahEventCopyWithImpl<$Res, _$OnGetSurahAudioImpl>
    implements _$$OnGetSurahAudioImplCopyWith<$Res> {
  __$$OnGetSurahAudioImplCopyWithImpl(
      _$OnGetSurahAudioImpl _value, $Res Function(_$OnGetSurahAudioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahNumber = null,
  }) {
    return _then(_$OnGetSurahAudioImpl(
      null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnGetSurahAudioImpl implements OnGetSurahAudio {
  const _$OnGetSurahAudioImpl(this.surahNumber);

  @override
  final int surahNumber;

  @override
  String toString() {
    return 'DetailSurahEvent.onGetSurahAudio(surahNumber: $surahNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetSurahAudioImpl &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surahNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetSurahAudioImplCopyWith<_$OnGetSurahAudioImpl> get copyWith =>
      __$$OnGetSurahAudioImplCopyWithImpl<_$OnGetSurahAudioImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int surahNumber) onGetDetail,
    required TResult Function(int surahNumber) onGetSurahAudio,
  }) {
    return onGetSurahAudio(surahNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int surahNumber)? onGetDetail,
    TResult? Function(int surahNumber)? onGetSurahAudio,
  }) {
    return onGetSurahAudio?.call(surahNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int surahNumber)? onGetDetail,
    TResult Function(int surahNumber)? onGetSurahAudio,
    required TResult orElse(),
  }) {
    if (onGetSurahAudio != null) {
      return onGetSurahAudio(surahNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetDetail value) onGetDetail,
    required TResult Function(OnGetSurahAudio value) onGetSurahAudio,
  }) {
    return onGetSurahAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetDetail value)? onGetDetail,
    TResult? Function(OnGetSurahAudio value)? onGetSurahAudio,
  }) {
    return onGetSurahAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetDetail value)? onGetDetail,
    TResult Function(OnGetSurahAudio value)? onGetSurahAudio,
    required TResult orElse(),
  }) {
    if (onGetSurahAudio != null) {
      return onGetSurahAudio(this);
    }
    return orElse();
  }
}

abstract class OnGetSurahAudio implements DetailSurahEvent {
  const factory OnGetSurahAudio(final int surahNumber) = _$OnGetSurahAudioImpl;

  @override
  int get surahNumber;
  @override
  @JsonKey(ignore: true)
  _$$OnGetSurahAudioImplCopyWith<_$OnGetSurahAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailSurahState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SurahDetail detailSurah) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SurahDetail detailSurah)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SurahDetail detailSurah)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailSurahInitial value) initial,
    required TResult Function(DetailSurahLoading value) loading,
    required TResult Function(DetailSurahLoaded value) loaded,
    required TResult Function(DetailSurahError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailSurahInitial value)? initial,
    TResult? Function(DetailSurahLoading value)? loading,
    TResult? Function(DetailSurahLoaded value)? loaded,
    TResult? Function(DetailSurahError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailSurahInitial value)? initial,
    TResult Function(DetailSurahLoading value)? loading,
    TResult Function(DetailSurahLoaded value)? loaded,
    TResult Function(DetailSurahError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSurahStateCopyWith<$Res> {
  factory $DetailSurahStateCopyWith(
          DetailSurahState value, $Res Function(DetailSurahState) then) =
      _$DetailSurahStateCopyWithImpl<$Res, DetailSurahState>;
}

/// @nodoc
class _$DetailSurahStateCopyWithImpl<$Res, $Val extends DetailSurahState>
    implements $DetailSurahStateCopyWith<$Res> {
  _$DetailSurahStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DetailSurahInitialImplCopyWith<$Res> {
  factory _$$DetailSurahInitialImplCopyWith(_$DetailSurahInitialImpl value,
          $Res Function(_$DetailSurahInitialImpl) then) =
      __$$DetailSurahInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailSurahInitialImplCopyWithImpl<$Res>
    extends _$DetailSurahStateCopyWithImpl<$Res, _$DetailSurahInitialImpl>
    implements _$$DetailSurahInitialImplCopyWith<$Res> {
  __$$DetailSurahInitialImplCopyWithImpl(_$DetailSurahInitialImpl _value,
      $Res Function(_$DetailSurahInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailSurahInitialImpl implements DetailSurahInitial {
  const _$DetailSurahInitialImpl();

  @override
  String toString() {
    return 'DetailSurahState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailSurahInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SurahDetail detailSurah) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SurahDetail detailSurah)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SurahDetail detailSurah)? loaded,
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
    required TResult Function(DetailSurahInitial value) initial,
    required TResult Function(DetailSurahLoading value) loading,
    required TResult Function(DetailSurahLoaded value) loaded,
    required TResult Function(DetailSurahError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailSurahInitial value)? initial,
    TResult? Function(DetailSurahLoading value)? loading,
    TResult? Function(DetailSurahLoaded value)? loaded,
    TResult? Function(DetailSurahError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailSurahInitial value)? initial,
    TResult Function(DetailSurahLoading value)? loading,
    TResult Function(DetailSurahLoaded value)? loaded,
    TResult Function(DetailSurahError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DetailSurahInitial implements DetailSurahState {
  const factory DetailSurahInitial() = _$DetailSurahInitialImpl;
}

/// @nodoc
abstract class _$$DetailSurahLoadingImplCopyWith<$Res> {
  factory _$$DetailSurahLoadingImplCopyWith(_$DetailSurahLoadingImpl value,
          $Res Function(_$DetailSurahLoadingImpl) then) =
      __$$DetailSurahLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailSurahLoadingImplCopyWithImpl<$Res>
    extends _$DetailSurahStateCopyWithImpl<$Res, _$DetailSurahLoadingImpl>
    implements _$$DetailSurahLoadingImplCopyWith<$Res> {
  __$$DetailSurahLoadingImplCopyWithImpl(_$DetailSurahLoadingImpl _value,
      $Res Function(_$DetailSurahLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailSurahLoadingImpl implements DetailSurahLoading {
  const _$DetailSurahLoadingImpl();

  @override
  String toString() {
    return 'DetailSurahState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailSurahLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SurahDetail detailSurah) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SurahDetail detailSurah)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SurahDetail detailSurah)? loaded,
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
    required TResult Function(DetailSurahInitial value) initial,
    required TResult Function(DetailSurahLoading value) loading,
    required TResult Function(DetailSurahLoaded value) loaded,
    required TResult Function(DetailSurahError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailSurahInitial value)? initial,
    TResult? Function(DetailSurahLoading value)? loading,
    TResult? Function(DetailSurahLoaded value)? loaded,
    TResult? Function(DetailSurahError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailSurahInitial value)? initial,
    TResult Function(DetailSurahLoading value)? loading,
    TResult Function(DetailSurahLoaded value)? loaded,
    TResult Function(DetailSurahError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DetailSurahLoading implements DetailSurahState {
  const factory DetailSurahLoading() = _$DetailSurahLoadingImpl;
}

/// @nodoc
abstract class _$$DetailSurahLoadedImplCopyWith<$Res> {
  factory _$$DetailSurahLoadedImplCopyWith(_$DetailSurahLoadedImpl value,
          $Res Function(_$DetailSurahLoadedImpl) then) =
      __$$DetailSurahLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SurahDetail detailSurah});

  $SurahDetailCopyWith<$Res> get detailSurah;
}

/// @nodoc
class __$$DetailSurahLoadedImplCopyWithImpl<$Res>
    extends _$DetailSurahStateCopyWithImpl<$Res, _$DetailSurahLoadedImpl>
    implements _$$DetailSurahLoadedImplCopyWith<$Res> {
  __$$DetailSurahLoadedImplCopyWithImpl(_$DetailSurahLoadedImpl _value,
      $Res Function(_$DetailSurahLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailSurah = null,
  }) {
    return _then(_$DetailSurahLoadedImpl(
      null == detailSurah
          ? _value.detailSurah
          : detailSurah // ignore: cast_nullable_to_non_nullable
              as SurahDetail,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahDetailCopyWith<$Res> get detailSurah {
    return $SurahDetailCopyWith<$Res>(_value.detailSurah, (value) {
      return _then(_value.copyWith(detailSurah: value));
    });
  }
}

/// @nodoc

class _$DetailSurahLoadedImpl implements DetailSurahLoaded {
  const _$DetailSurahLoadedImpl(this.detailSurah);

  @override
  final SurahDetail detailSurah;

  @override
  String toString() {
    return 'DetailSurahState.loaded(detailSurah: $detailSurah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSurahLoadedImpl &&
            (identical(other.detailSurah, detailSurah) ||
                other.detailSurah == detailSurah));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailSurah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSurahLoadedImplCopyWith<_$DetailSurahLoadedImpl> get copyWith =>
      __$$DetailSurahLoadedImplCopyWithImpl<_$DetailSurahLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SurahDetail detailSurah) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(detailSurah);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SurahDetail detailSurah)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(detailSurah);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SurahDetail detailSurah)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(detailSurah);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailSurahInitial value) initial,
    required TResult Function(DetailSurahLoading value) loading,
    required TResult Function(DetailSurahLoaded value) loaded,
    required TResult Function(DetailSurahError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailSurahInitial value)? initial,
    TResult? Function(DetailSurahLoading value)? loading,
    TResult? Function(DetailSurahLoaded value)? loaded,
    TResult? Function(DetailSurahError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailSurahInitial value)? initial,
    TResult Function(DetailSurahLoading value)? loading,
    TResult Function(DetailSurahLoaded value)? loaded,
    TResult Function(DetailSurahError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DetailSurahLoaded implements DetailSurahState {
  const factory DetailSurahLoaded(final SurahDetail detailSurah) =
      _$DetailSurahLoadedImpl;

  SurahDetail get detailSurah;
  @JsonKey(ignore: true)
  _$$DetailSurahLoadedImplCopyWith<_$DetailSurahLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailSurahErrorImplCopyWith<$Res> {
  factory _$$DetailSurahErrorImplCopyWith(_$DetailSurahErrorImpl value,
          $Res Function(_$DetailSurahErrorImpl) then) =
      __$$DetailSurahErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DetailSurahErrorImplCopyWithImpl<$Res>
    extends _$DetailSurahStateCopyWithImpl<$Res, _$DetailSurahErrorImpl>
    implements _$$DetailSurahErrorImplCopyWith<$Res> {
  __$$DetailSurahErrorImplCopyWithImpl(_$DetailSurahErrorImpl _value,
      $Res Function(_$DetailSurahErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DetailSurahErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailSurahErrorImpl implements DetailSurahError {
  const _$DetailSurahErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DetailSurahState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSurahErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSurahErrorImplCopyWith<_$DetailSurahErrorImpl> get copyWith =>
      __$$DetailSurahErrorImplCopyWithImpl<_$DetailSurahErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SurahDetail detailSurah) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SurahDetail detailSurah)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SurahDetail detailSurah)? loaded,
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
    required TResult Function(DetailSurahInitial value) initial,
    required TResult Function(DetailSurahLoading value) loading,
    required TResult Function(DetailSurahLoaded value) loaded,
    required TResult Function(DetailSurahError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailSurahInitial value)? initial,
    TResult? Function(DetailSurahLoading value)? loading,
    TResult? Function(DetailSurahLoaded value)? loaded,
    TResult? Function(DetailSurahError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailSurahInitial value)? initial,
    TResult Function(DetailSurahLoading value)? loading,
    TResult Function(DetailSurahLoaded value)? loaded,
    TResult Function(DetailSurahError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DetailSurahError implements DetailSurahState {
  const factory DetailSurahError(final String message) = _$DetailSurahErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DetailSurahErrorImplCopyWith<_$DetailSurahErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
