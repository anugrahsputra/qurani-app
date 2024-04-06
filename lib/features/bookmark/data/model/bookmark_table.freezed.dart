// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookmarkTable _$BookmarkTableFromJson(Map<String, dynamic> json) {
  return _BookmarkTable.fromJson(json);
}

/// @nodoc
mixin _$BookmarkTable {
  int get id => throw _privateConstructorUsedError;
  int get inSurah => throw _privateConstructorUsedError;
  int get surahNumber => throw _privateConstructorUsedError;
  String get surahName => throw _privateConstructorUsedError;
  String get textArab => throw _privateConstructorUsedError;
  String get textTranslate => throw _privateConstructorUsedError;
  String get textTransliteration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkTableCopyWith<BookmarkTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkTableCopyWith<$Res> {
  factory $BookmarkTableCopyWith(
          BookmarkTable value, $Res Function(BookmarkTable) then) =
      _$BookmarkTableCopyWithImpl<$Res, BookmarkTable>;
  @useResult
  $Res call(
      {int id,
      int inSurah,
      int surahNumber,
      String surahName,
      String textArab,
      String textTranslate,
      String textTransliteration});
}

/// @nodoc
class _$BookmarkTableCopyWithImpl<$Res, $Val extends BookmarkTable>
    implements $BookmarkTableCopyWith<$Res> {
  _$BookmarkTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inSurah = null,
    Object? surahNumber = null,
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
      surahNumber: null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
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
abstract class _$$BookmarkTableImplCopyWith<$Res>
    implements $BookmarkTableCopyWith<$Res> {
  factory _$$BookmarkTableImplCopyWith(
          _$BookmarkTableImpl value, $Res Function(_$BookmarkTableImpl) then) =
      __$$BookmarkTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int inSurah,
      int surahNumber,
      String surahName,
      String textArab,
      String textTranslate,
      String textTransliteration});
}

/// @nodoc
class __$$BookmarkTableImplCopyWithImpl<$Res>
    extends _$BookmarkTableCopyWithImpl<$Res, _$BookmarkTableImpl>
    implements _$$BookmarkTableImplCopyWith<$Res> {
  __$$BookmarkTableImplCopyWithImpl(
      _$BookmarkTableImpl _value, $Res Function(_$BookmarkTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inSurah = null,
    Object? surahNumber = null,
    Object? surahName = null,
    Object? textArab = null,
    Object? textTranslate = null,
    Object? textTransliteration = null,
  }) {
    return _then(_$BookmarkTableImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inSurah: null == inSurah
          ? _value.inSurah
          : inSurah // ignore: cast_nullable_to_non_nullable
              as int,
      surahNumber: null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$BookmarkTableImpl extends _BookmarkTable {
  const _$BookmarkTableImpl(
      {required this.id,
      required this.inSurah,
      required this.surahNumber,
      required this.surahName,
      required this.textArab,
      required this.textTranslate,
      required this.textTransliteration})
      : super._();

  factory _$BookmarkTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkTableImplFromJson(json);

  @override
  final int id;
  @override
  final int inSurah;
  @override
  final int surahNumber;
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
    return 'BookmarkTable(id: $id, inSurah: $inSurah, surahNumber: $surahNumber, surahName: $surahName, textArab: $textArab, textTranslate: $textTranslate, textTransliteration: $textTransliteration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkTableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inSurah, inSurah) || other.inSurah == inSurah) &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber) &&
            (identical(other.surahName, surahName) ||
                other.surahName == surahName) &&
            (identical(other.textArab, textArab) ||
                other.textArab == textArab) &&
            (identical(other.textTranslate, textTranslate) ||
                other.textTranslate == textTranslate) &&
            (identical(other.textTransliteration, textTransliteration) ||
                other.textTransliteration == textTransliteration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, inSurah, surahNumber,
      surahName, textArab, textTranslate, textTransliteration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkTableImplCopyWith<_$BookmarkTableImpl> get copyWith =>
      __$$BookmarkTableImplCopyWithImpl<_$BookmarkTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkTableImplToJson(
      this,
    );
  }
}

abstract class _BookmarkTable extends BookmarkTable {
  const factory _BookmarkTable(
      {required final int id,
      required final int inSurah,
      required final int surahNumber,
      required final String surahName,
      required final String textArab,
      required final String textTranslate,
      required final String textTransliteration}) = _$BookmarkTableImpl;
  const _BookmarkTable._() : super._();

  factory _BookmarkTable.fromJson(Map<String, dynamic> json) =
      _$BookmarkTableImpl.fromJson;

  @override
  int get id;
  @override
  int get inSurah;
  @override
  int get surahNumber;
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
  _$$BookmarkTableImplCopyWith<_$BookmarkTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
