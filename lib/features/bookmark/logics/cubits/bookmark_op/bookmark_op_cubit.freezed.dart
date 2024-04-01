// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_op_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarkOpState {
  bool get isBookmarked => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBookmarked, String message) isBookmarked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isBookmarked, String message)? isBookmarked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBookmarked, String message)? isBookmarked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsBookmarked value) isBookmarked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsBookmarked value)? isBookmarked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsBookmarked value)? isBookmarked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkOpStateCopyWith<BookmarkOpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkOpStateCopyWith<$Res> {
  factory $BookmarkOpStateCopyWith(
          BookmarkOpState value, $Res Function(BookmarkOpState) then) =
      _$BookmarkOpStateCopyWithImpl<$Res, BookmarkOpState>;
  @useResult
  $Res call({bool isBookmarked, String message});
}

/// @nodoc
class _$BookmarkOpStateCopyWithImpl<$Res, $Val extends BookmarkOpState>
    implements $BookmarkOpStateCopyWith<$Res> {
  _$BookmarkOpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBookmarked = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IsBookmarkedImplCopyWith<$Res>
    implements $BookmarkOpStateCopyWith<$Res> {
  factory _$$IsBookmarkedImplCopyWith(
          _$IsBookmarkedImpl value, $Res Function(_$IsBookmarkedImpl) then) =
      __$$IsBookmarkedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isBookmarked, String message});
}

/// @nodoc
class __$$IsBookmarkedImplCopyWithImpl<$Res>
    extends _$BookmarkOpStateCopyWithImpl<$Res, _$IsBookmarkedImpl>
    implements _$$IsBookmarkedImplCopyWith<$Res> {
  __$$IsBookmarkedImplCopyWithImpl(
      _$IsBookmarkedImpl _value, $Res Function(_$IsBookmarkedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBookmarked = null,
    Object? message = null,
  }) {
    return _then(_$IsBookmarkedImpl(
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsBookmarkedImpl implements IsBookmarked {
  const _$IsBookmarkedImpl({required this.isBookmarked, required this.message});

  @override
  final bool isBookmarked;
  @override
  final String message;

  @override
  String toString() {
    return 'BookmarkOpState.isBookmarked(isBookmarked: $isBookmarked, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsBookmarkedImpl &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBookmarked, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsBookmarkedImplCopyWith<_$IsBookmarkedImpl> get copyWith =>
      __$$IsBookmarkedImplCopyWithImpl<_$IsBookmarkedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isBookmarked, String message) isBookmarked,
  }) {
    return isBookmarked(this.isBookmarked, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isBookmarked, String message)? isBookmarked,
  }) {
    return isBookmarked?.call(this.isBookmarked, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isBookmarked, String message)? isBookmarked,
    required TResult orElse(),
  }) {
    if (isBookmarked != null) {
      return isBookmarked(this.isBookmarked, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsBookmarked value) isBookmarked,
  }) {
    return isBookmarked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsBookmarked value)? isBookmarked,
  }) {
    return isBookmarked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsBookmarked value)? isBookmarked,
    required TResult orElse(),
  }) {
    if (isBookmarked != null) {
      return isBookmarked(this);
    }
    return orElse();
  }
}

abstract class IsBookmarked implements BookmarkOpState {
  const factory IsBookmarked(
      {required final bool isBookmarked,
      required final String message}) = _$IsBookmarkedImpl;

  @override
  bool get isBookmarked;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$IsBookmarkedImplCopyWith<_$IsBookmarkedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
