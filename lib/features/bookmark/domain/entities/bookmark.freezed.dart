// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Bookmark {
  int get id => throw _privateConstructorUsedError;
  int get inSurah => throw _privateConstructorUsedError;
  String get surahName => throw _privateConstructorUsedError;
  String get textArab => throw _privateConstructorUsedError;
  String get textTranslate => throw _privateConstructorUsedError;
  String get textTransliteration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkCopyWith<Bookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkCopyWith<$Res> {
  factory $BookmarkCopyWith(Bookmark value, $Res Function(Bookmark) then) =
      _$BookmarkCopyWithImpl<$Res, Bookmark>;
  @useResult
  $Res call(
      {int id,
      int inSurah,
      String surahName,
      String textArab,
      String textTranslate,
      String textTransliteration});
}

/// @nodoc
class _$BookmarkCopyWithImpl<$Res, $Val extends Bookmark>
    implements $BookmarkCopyWith<$Res> {
  _$BookmarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inSurah = null,
    Object? surahName = null,
    Object? textArab = null,
    Object? textTranslate = null,
    Object? textTransliteration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inSurah: null == inSurah
          ? _value.inSurah
          : inSurah // ignore: cast_nullable_to_non_nullable
              as int,
      surahName: null == surahName
          ? _value.surahName
          : surahName // ignore: cast_nullable_to_non_nullable
              as String,
      textArab: null == textArab
          ? _value.textArab
          : textArab // ignore: cast_nullable_to_non_nullable
              as String,
      textTranslate: null == textTranslate
          ? _value.textTranslate
          : textTranslate // ignore: cast_nullable_to_non_nullable
              as String,
      textTransliteration: null == textTransliteration
          ? _value.textTransliteration
          : textTransliteration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkImplCopyWith<$Res>
    implements $BookmarkCopyWith<$Res> {
  factory _$$BookmarkImplCopyWith(
          _$BookmarkImpl value, $Res Function(_$BookmarkImpl) then) =
      __$$BookmarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int inSurah,
      String surahName,
      String textArab,
      String textTranslate,
      String textTransliteration});
}

/// @nodoc
class __$$BookmarkImplCopyWithImpl<$Res>
    extends _$BookmarkCopyWithImpl<$Res, _$BookmarkImpl>
    implements _$$BookmarkImplCopyWith<$Res> {
  __$$BookmarkImplCopyWithImpl(
      _$BookmarkImpl _value, $Res Function(_$BookmarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inSurah = null,
    Object? surahName = null,
    Object? textArab = null,
    Object? textTranslate = null,
    Object? textTransliteration = null,
  }) {
    return _then(_$BookmarkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inSurah: null == inSurah
          ? _value.inSurah
          : inSurah // ignore: cast_nullable_to_non_nullable
              as int,
      surahName: null == surahName
          ? _value.surahName
          : surahName // ignore: cast_nullable_to_non_nullable
              as String,
      textArab: null == textArab
          ? _value.textArab
          : textArab // ignore: cast_nullable_to_non_nullable
              as String,
      textTranslate: null == textTranslate
          ? _value.textTranslate
          : textTranslate // ignore: cast_nullable_to_non_nullable
              as String,
      textTransliteration: null == textTransliteration
          ? _value.textTransliteration
          : textTransliteration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookmarkImpl implements _Bookmark {
  const _$BookmarkImpl(
      {required this.id,
      required this.inSurah,
      required this.surahName,
      required this.textArab,
      required this.textTranslate,
      required this.textTransliteration});

  @override
  final int id;
  @override
  final int inSurah;
  @override
  final String surahName;
  @override
  final String textArab;
  @override
  final String textTranslate;
  @override
  final String textTransliteration;

  @override
  String toString() {
    return 'Bookmark(id: $id, inSurah: $inSurah, surahName: $surahName, textArab: $textArab, textTranslate: $textTranslate, textTransliteration: $textTransliteration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inSurah, inSurah) || other.inSurah == inSurah) &&
            (identical(other.surahName, surahName) ||
                other.surahName == surahName) &&
            (identical(other.textArab, textArab) ||
                other.textArab == textArab) &&
            (identical(other.textTranslate, textTranslate) ||
                other.textTranslate == textTranslate) &&
            (identical(other.textTransliteration, textTransliteration) ||
                other.textTransliteration == textTransliteration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, inSurah, surahName, textArab,
      textTranslate, textTransliteration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkImplCopyWith<_$BookmarkImpl> get copyWith =>
      __$$BookmarkImplCopyWithImpl<_$BookmarkImpl>(this, _$identity);
}

abstract class _Bookmark implements Bookmark {
  const factory _Bookmark(
      {required final int id,
      required final int inSurah,
      required final String surahName,
      required final String textArab,
      required final String textTranslate,
      required final String textTransliteration}) = _$BookmarkImpl;

  @override
  int get id;
  @override
  int get inSurah;
  @override
  String get surahName;
  @override
  String get textArab;
  @override
  String get textTranslate;
  @override
  String get textTransliteration;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkImplCopyWith<_$BookmarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
