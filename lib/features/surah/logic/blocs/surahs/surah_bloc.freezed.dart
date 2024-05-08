// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SurahEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetSurah,
    required TResult Function(String query) onSearchSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetSurah,
    TResult? Function(String query)? onSearchSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetSurah,
    TResult Function(String query)? onSearchSurah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetSurah value) onGetSurah,
    required TResult Function(OnSearchSurah value) onSearchSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetSurah value)? onGetSurah,
    TResult? Function(OnSearchSurah value)? onSearchSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetSurah value)? onGetSurah,
    TResult Function(OnSearchSurah value)? onSearchSurah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahEventCopyWith<$Res> {
  factory $SurahEventCopyWith(
          SurahEvent value, $Res Function(SurahEvent) then) =
      _$SurahEventCopyWithImpl<$Res, SurahEvent>;
}

/// @nodoc
class _$SurahEventCopyWithImpl<$Res, $Val extends SurahEvent>
    implements $SurahEventCopyWith<$Res> {
  _$SurahEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnGetSurahImplCopyWith<$Res> {
  factory _$$OnGetSurahImplCopyWith(
          _$OnGetSurahImpl value, $Res Function(_$OnGetSurahImpl) then) =
      __$$OnGetSurahImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetSurahImplCopyWithImpl<$Res>
    extends _$SurahEventCopyWithImpl<$Res, _$OnGetSurahImpl>
    implements _$$OnGetSurahImplCopyWith<$Res> {
  __$$OnGetSurahImplCopyWithImpl(
      _$OnGetSurahImpl _value, $Res Function(_$OnGetSurahImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnGetSurahImpl implements OnGetSurah {
  const _$OnGetSurahImpl();

  @override
  String toString() {
    return 'SurahEvent.onGetSurah()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGetSurahImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetSurah,
    required TResult Function(String query) onSearchSurah,
  }) {
    return onGetSurah();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetSurah,
    TResult? Function(String query)? onSearchSurah,
  }) {
    return onGetSurah?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetSurah,
    TResult Function(String query)? onSearchSurah,
    required TResult orElse(),
  }) {
    if (onGetSurah != null) {
      return onGetSurah();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetSurah value) onGetSurah,
    required TResult Function(OnSearchSurah value) onSearchSurah,
  }) {
    return onGetSurah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetSurah value)? onGetSurah,
    TResult? Function(OnSearchSurah value)? onSearchSurah,
  }) {
    return onGetSurah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetSurah value)? onGetSurah,
    TResult Function(OnSearchSurah value)? onSearchSurah,
    required TResult orElse(),
  }) {
    if (onGetSurah != null) {
      return onGetSurah(this);
    }
    return orElse();
  }
}

abstract class OnGetSurah implements SurahEvent {
  const factory OnGetSurah() = _$OnGetSurahImpl;
}

/// @nodoc
abstract class _$$OnSearchSurahImplCopyWith<$Res> {
  factory _$$OnSearchSurahImplCopyWith(
          _$OnSearchSurahImpl value, $Res Function(_$OnSearchSurahImpl) then) =
      __$$OnSearchSurahImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$OnSearchSurahImplCopyWithImpl<$Res>
    extends _$SurahEventCopyWithImpl<$Res, _$OnSearchSurahImpl>
    implements _$$OnSearchSurahImplCopyWith<$Res> {
  __$$OnSearchSurahImplCopyWithImpl(
      _$OnSearchSurahImpl _value, $Res Function(_$OnSearchSurahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$OnSearchSurahImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSearchSurahImpl implements OnSearchSurah {
  const _$OnSearchSurahImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SurahEvent.onSearchSurah(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSearchSurahImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSearchSurahImplCopyWith<_$OnSearchSurahImpl> get copyWith =>
      __$$OnSearchSurahImplCopyWithImpl<_$OnSearchSurahImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetSurah,
    required TResult Function(String query) onSearchSurah,
  }) {
    return onSearchSurah(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetSurah,
    TResult? Function(String query)? onSearchSurah,
  }) {
    return onSearchSurah?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetSurah,
    TResult Function(String query)? onSearchSurah,
    required TResult orElse(),
  }) {
    if (onSearchSurah != null) {
      return onSearchSurah(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetSurah value) onGetSurah,
    required TResult Function(OnSearchSurah value) onSearchSurah,
  }) {
    return onSearchSurah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetSurah value)? onGetSurah,
    TResult? Function(OnSearchSurah value)? onSearchSurah,
  }) {
    return onSearchSurah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetSurah value)? onGetSurah,
    TResult Function(OnSearchSurah value)? onSearchSurah,
    required TResult orElse(),
  }) {
    if (onSearchSurah != null) {
      return onSearchSurah(this);
    }
    return orElse();
  }
}

abstract class OnSearchSurah implements SurahEvent {
  const factory OnSearchSurah(final String query) = _$OnSearchSurahImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$OnSearchSurahImplCopyWith<_$OnSearchSurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SurahState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SurahEntity> listSurah) loaded,
    required TResult Function(List<SurahEntity> filteredSurah) searched,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SurahEntity> listSurah)? loaded,
    TResult? Function(List<SurahEntity> filteredSurah)? searched,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SurahEntity> listSurah)? loaded,
    TResult Function(List<SurahEntity> filteredSurah)? searched,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SurahInitial value) initial,
    required TResult Function(SurahLoading value) loading,
    required TResult Function(SurahLoaded value) loaded,
    required TResult Function(SurahSearched value) searched,
    required TResult Function(SurahError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SurahInitial value)? initial,
    TResult? Function(SurahLoading value)? loading,
    TResult? Function(SurahLoaded value)? loaded,
    TResult? Function(SurahSearched value)? searched,
    TResult? Function(SurahError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SurahInitial value)? initial,
    TResult Function(SurahLoading value)? loading,
    TResult Function(SurahLoaded value)? loaded,
    TResult Function(SurahSearched value)? searched,
    TResult Function(SurahError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahStateCopyWith<$Res> {
  factory $SurahStateCopyWith(
          SurahState value, $Res Function(SurahState) then) =
      _$SurahStateCopyWithImpl<$Res, SurahState>;
}

/// @nodoc
class _$SurahStateCopyWithImpl<$Res, $Val extends SurahState>
    implements $SurahStateCopyWith<$Res> {
  _$SurahStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SurahInitialImplCopyWith<$Res> {
  factory _$$SurahInitialImplCopyWith(
          _$SurahInitialImpl value, $Res Function(_$SurahInitialImpl) then) =
      __$$SurahInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SurahInitialImplCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$SurahInitialImpl>
    implements _$$SurahInitialImplCopyWith<$Res> {
  __$$SurahInitialImplCopyWithImpl(
      _$SurahInitialImpl _value, $Res Function(_$SurahInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SurahInitialImpl implements SurahInitial {
  const _$SurahInitialImpl();

  @override
  String toString() {
    return 'SurahState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SurahInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SurahEntity> listSurah) loaded,
    required TResult Function(List<SurahEntity> filteredSurah) searched,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SurahEntity> listSurah)? loaded,
    TResult? Function(List<SurahEntity> filteredSurah)? searched,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SurahEntity> listSurah)? loaded,
    TResult Function(List<SurahEntity> filteredSurah)? searched,
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
    required TResult Function(SurahInitial value) initial,
    required TResult Function(SurahLoading value) loading,
    required TResult Function(SurahLoaded value) loaded,
    required TResult Function(SurahSearched value) searched,
    required TResult Function(SurahError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SurahInitial value)? initial,
    TResult? Function(SurahLoading value)? loading,
    TResult? Function(SurahLoaded value)? loaded,
    TResult? Function(SurahSearched value)? searched,
    TResult? Function(SurahError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SurahInitial value)? initial,
    TResult Function(SurahLoading value)? loading,
    TResult Function(SurahLoaded value)? loaded,
    TResult Function(SurahSearched value)? searched,
    TResult Function(SurahError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SurahInitial implements SurahState {
  const factory SurahInitial() = _$SurahInitialImpl;
}

/// @nodoc
abstract class _$$SurahLoadingImplCopyWith<$Res> {
  factory _$$SurahLoadingImplCopyWith(
          _$SurahLoadingImpl value, $Res Function(_$SurahLoadingImpl) then) =
      __$$SurahLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SurahLoadingImplCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$SurahLoadingImpl>
    implements _$$SurahLoadingImplCopyWith<$Res> {
  __$$SurahLoadingImplCopyWithImpl(
      _$SurahLoadingImpl _value, $Res Function(_$SurahLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SurahLoadingImpl implements SurahLoading {
  const _$SurahLoadingImpl();

  @override
  String toString() {
    return 'SurahState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SurahLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SurahEntity> listSurah) loaded,
    required TResult Function(List<SurahEntity> filteredSurah) searched,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SurahEntity> listSurah)? loaded,
    TResult? Function(List<SurahEntity> filteredSurah)? searched,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SurahEntity> listSurah)? loaded,
    TResult Function(List<SurahEntity> filteredSurah)? searched,
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
    required TResult Function(SurahInitial value) initial,
    required TResult Function(SurahLoading value) loading,
    required TResult Function(SurahLoaded value) loaded,
    required TResult Function(SurahSearched value) searched,
    required TResult Function(SurahError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SurahInitial value)? initial,
    TResult? Function(SurahLoading value)? loading,
    TResult? Function(SurahLoaded value)? loaded,
    TResult? Function(SurahSearched value)? searched,
    TResult? Function(SurahError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SurahInitial value)? initial,
    TResult Function(SurahLoading value)? loading,
    TResult Function(SurahLoaded value)? loaded,
    TResult Function(SurahSearched value)? searched,
    TResult Function(SurahError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SurahLoading implements SurahState {
  const factory SurahLoading() = _$SurahLoadingImpl;
}

/// @nodoc
abstract class _$$SurahLoadedImplCopyWith<$Res> {
  factory _$$SurahLoadedImplCopyWith(
          _$SurahLoadedImpl value, $Res Function(_$SurahLoadedImpl) then) =
      __$$SurahLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SurahEntity> listSurah});
}

/// @nodoc
class __$$SurahLoadedImplCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$SurahLoadedImpl>
    implements _$$SurahLoadedImplCopyWith<$Res> {
  __$$SurahLoadedImplCopyWithImpl(
      _$SurahLoadedImpl _value, $Res Function(_$SurahLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listSurah = null,
  }) {
    return _then(_$SurahLoadedImpl(
      null == listSurah
          ? _value._listSurah
          : listSurah // ignore: cast_nullable_to_non_nullable
              as List<SurahEntity>,
    ));
  }
}

/// @nodoc

class _$SurahLoadedImpl implements SurahLoaded {
  const _$SurahLoadedImpl(final List<SurahEntity> listSurah)
      : _listSurah = listSurah;

  final List<SurahEntity> _listSurah;
  @override
  List<SurahEntity> get listSurah {
    if (_listSurah is EqualUnmodifiableListView) return _listSurah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSurah);
  }

  @override
  String toString() {
    return 'SurahState.loaded(listSurah: $listSurah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._listSurah, _listSurah));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listSurah));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahLoadedImplCopyWith<_$SurahLoadedImpl> get copyWith =>
      __$$SurahLoadedImplCopyWithImpl<_$SurahLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SurahEntity> listSurah) loaded,
    required TResult Function(List<SurahEntity> filteredSurah) searched,
    required TResult Function(String message) error,
  }) {
    return loaded(listSurah);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SurahEntity> listSurah)? loaded,
    TResult? Function(List<SurahEntity> filteredSurah)? searched,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(listSurah);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SurahEntity> listSurah)? loaded,
    TResult Function(List<SurahEntity> filteredSurah)? searched,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listSurah);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SurahInitial value) initial,
    required TResult Function(SurahLoading value) loading,
    required TResult Function(SurahLoaded value) loaded,
    required TResult Function(SurahSearched value) searched,
    required TResult Function(SurahError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SurahInitial value)? initial,
    TResult? Function(SurahLoading value)? loading,
    TResult? Function(SurahLoaded value)? loaded,
    TResult? Function(SurahSearched value)? searched,
    TResult? Function(SurahError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SurahInitial value)? initial,
    TResult Function(SurahLoading value)? loading,
    TResult Function(SurahLoaded value)? loaded,
    TResult Function(SurahSearched value)? searched,
    TResult Function(SurahError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SurahLoaded implements SurahState {
  const factory SurahLoaded(final List<SurahEntity> listSurah) =
      _$SurahLoadedImpl;

  List<SurahEntity> get listSurah;
  @JsonKey(ignore: true)
  _$$SurahLoadedImplCopyWith<_$SurahLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SurahSearchedImplCopyWith<$Res> {
  factory _$$SurahSearchedImplCopyWith(
          _$SurahSearchedImpl value, $Res Function(_$SurahSearchedImpl) then) =
      __$$SurahSearchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SurahEntity> filteredSurah});
}

/// @nodoc
class __$$SurahSearchedImplCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$SurahSearchedImpl>
    implements _$$SurahSearchedImplCopyWith<$Res> {
  __$$SurahSearchedImplCopyWithImpl(
      _$SurahSearchedImpl _value, $Res Function(_$SurahSearchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredSurah = null,
  }) {
    return _then(_$SurahSearchedImpl(
      null == filteredSurah
          ? _value._filteredSurah
          : filteredSurah // ignore: cast_nullable_to_non_nullable
              as List<SurahEntity>,
    ));
  }
}

/// @nodoc

class _$SurahSearchedImpl implements SurahSearched {
  const _$SurahSearchedImpl(final List<SurahEntity> filteredSurah)
      : _filteredSurah = filteredSurah;

  final List<SurahEntity> _filteredSurah;
  @override
  List<SurahEntity> get filteredSurah {
    if (_filteredSurah is EqualUnmodifiableListView) return _filteredSurah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredSurah);
  }

  @override
  String toString() {
    return 'SurahState.searched(filteredSurah: $filteredSurah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahSearchedImpl &&
            const DeepCollectionEquality()
                .equals(other._filteredSurah, _filteredSurah));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_filteredSurah));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahSearchedImplCopyWith<_$SurahSearchedImpl> get copyWith =>
      __$$SurahSearchedImplCopyWithImpl<_$SurahSearchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SurahEntity> listSurah) loaded,
    required TResult Function(List<SurahEntity> filteredSurah) searched,
    required TResult Function(String message) error,
  }) {
    return searched(filteredSurah);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SurahEntity> listSurah)? loaded,
    TResult? Function(List<SurahEntity> filteredSurah)? searched,
    TResult? Function(String message)? error,
  }) {
    return searched?.call(filteredSurah);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SurahEntity> listSurah)? loaded,
    TResult Function(List<SurahEntity> filteredSurah)? searched,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(filteredSurah);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SurahInitial value) initial,
    required TResult Function(SurahLoading value) loading,
    required TResult Function(SurahLoaded value) loaded,
    required TResult Function(SurahSearched value) searched,
    required TResult Function(SurahError value) error,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SurahInitial value)? initial,
    TResult? Function(SurahLoading value)? loading,
    TResult? Function(SurahLoaded value)? loaded,
    TResult? Function(SurahSearched value)? searched,
    TResult? Function(SurahError value)? error,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SurahInitial value)? initial,
    TResult Function(SurahLoading value)? loading,
    TResult Function(SurahLoaded value)? loaded,
    TResult Function(SurahSearched value)? searched,
    TResult Function(SurahError value)? error,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class SurahSearched implements SurahState {
  const factory SurahSearched(final List<SurahEntity> filteredSurah) =
      _$SurahSearchedImpl;

  List<SurahEntity> get filteredSurah;
  @JsonKey(ignore: true)
  _$$SurahSearchedImplCopyWith<_$SurahSearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SurahErrorImplCopyWith<$Res> {
  factory _$$SurahErrorImplCopyWith(
          _$SurahErrorImpl value, $Res Function(_$SurahErrorImpl) then) =
      __$$SurahErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SurahErrorImplCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$SurahErrorImpl>
    implements _$$SurahErrorImplCopyWith<$Res> {
  __$$SurahErrorImplCopyWithImpl(
      _$SurahErrorImpl _value, $Res Function(_$SurahErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SurahErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SurahErrorImpl implements SurahError {
  const _$SurahErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SurahState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahErrorImplCopyWith<_$SurahErrorImpl> get copyWith =>
      __$$SurahErrorImplCopyWithImpl<_$SurahErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SurahEntity> listSurah) loaded,
    required TResult Function(List<SurahEntity> filteredSurah) searched,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SurahEntity> listSurah)? loaded,
    TResult? Function(List<SurahEntity> filteredSurah)? searched,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SurahEntity> listSurah)? loaded,
    TResult Function(List<SurahEntity> filteredSurah)? searched,
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
    required TResult Function(SurahInitial value) initial,
    required TResult Function(SurahLoading value) loading,
    required TResult Function(SurahLoaded value) loaded,
    required TResult Function(SurahSearched value) searched,
    required TResult Function(SurahError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SurahInitial value)? initial,
    TResult? Function(SurahLoading value)? loading,
    TResult? Function(SurahLoaded value)? loaded,
    TResult? Function(SurahSearched value)? searched,
    TResult? Function(SurahError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SurahInitial value)? initial,
    TResult Function(SurahLoading value)? loading,
    TResult Function(SurahLoaded value)? loaded,
    TResult Function(SurahSearched value)? searched,
    TResult Function(SurahError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SurahError implements SurahState {
  const factory SurahError(final String message) = _$SurahErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SurahErrorImplCopyWith<_$SurahErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
