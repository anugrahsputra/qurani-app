// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AyahRes {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Ayah get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AyahResCopyWith<AyahRes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahResCopyWith<$Res> {
  factory $AyahResCopyWith(AyahRes value, $Res Function(AyahRes) then) =
      _$AyahResCopyWithImpl<$Res, AyahRes>;
  @useResult
  $Res call({int code, String status, String message, Ayah data});

  $AyahCopyWith<$Res> get data;
}

/// @nodoc
class _$AyahResCopyWithImpl<$Res, $Val extends AyahRes>
    implements $AyahResCopyWith<$Res> {
  _$AyahResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Ayah,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AyahCopyWith<$Res> get data {
    return $AyahCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AyahResImplCopyWith<$Res> implements $AyahResCopyWith<$Res> {
  factory _$$AyahResImplCopyWith(
          _$AyahResImpl value, $Res Function(_$AyahResImpl) then) =
      __$$AyahResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, String message, Ayah data});

  @override
  $AyahCopyWith<$Res> get data;
}

/// @nodoc
class __$$AyahResImplCopyWithImpl<$Res>
    extends _$AyahResCopyWithImpl<$Res, _$AyahResImpl>
    implements _$$AyahResImplCopyWith<$Res> {
  __$$AyahResImplCopyWithImpl(
      _$AyahResImpl _value, $Res Function(_$AyahResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AyahResImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Ayah,
    ));
  }
}

/// @nodoc

class _$AyahResImpl implements _AyahRes {
  const _$AyahResImpl(
      {required this.code,
      required this.status,
      required this.message,
      required this.data});

  @override
  final int code;
  @override
  final String status;
  @override
  final String message;
  @override
  final Ayah data;

  @override
  String toString() {
    return 'AyahRes(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahResImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahResImplCopyWith<_$AyahResImpl> get copyWith =>
      __$$AyahResImplCopyWithImpl<_$AyahResImpl>(this, _$identity);
}

abstract class _AyahRes implements AyahRes {
  const factory _AyahRes(
      {required final int code,
      required final String status,
      required final String message,
      required final Ayah data}) = _$AyahResImpl;

  @override
  int get code;
  @override
  String get status;
  @override
  String get message;
  @override
  Ayah get data;
  @override
  @JsonKey(ignore: true)
  _$$AyahResImplCopyWith<_$AyahResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Ayah {
  NumberAyah get number => throw _privateConstructorUsedError;
  MetaAyah get meta => throw _privateConstructorUsedError;
  TextAyah get text => throw _privateConstructorUsedError;
  TranslationAyah get translation => throw _privateConstructorUsedError;
  AudioAyah get audio => throw _privateConstructorUsedError;
  TafsirAyah get tafsir => throw _privateConstructorUsedError;
  SurahAyah get surah => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AyahCopyWith<Ayah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahCopyWith<$Res> {
  factory $AyahCopyWith(Ayah value, $Res Function(Ayah) then) =
      _$AyahCopyWithImpl<$Res, Ayah>;
  @useResult
  $Res call(
      {NumberAyah number,
      MetaAyah meta,
      TextAyah text,
      TranslationAyah translation,
      AudioAyah audio,
      TafsirAyah tafsir,
      SurahAyah surah});

  $NumberAyahCopyWith<$Res> get number;
  $MetaAyahCopyWith<$Res> get meta;
  $TextAyahCopyWith<$Res> get text;
  $TranslationAyahCopyWith<$Res> get translation;
  $AudioAyahCopyWith<$Res> get audio;
  $TafsirAyahCopyWith<$Res> get tafsir;
  $SurahAyahCopyWith<$Res> get surah;
}

/// @nodoc
class _$AyahCopyWithImpl<$Res, $Val extends Ayah>
    implements $AyahCopyWith<$Res> {
  _$AyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? meta = null,
    Object? text = null,
    Object? translation = null,
    Object? audio = null,
    Object? tafsir = null,
    Object? surah = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as NumberAyah,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaAyah,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextAyah,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyah,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioAyah,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as TafsirAyah,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as SurahAyah,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NumberAyahCopyWith<$Res> get number {
    return $NumberAyahCopyWith<$Res>(_value.number, (value) {
      return _then(_value.copyWith(number: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaAyahCopyWith<$Res> get meta {
    return $MetaAyahCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextAyahCopyWith<$Res> get text {
    return $TextAyahCopyWith<$Res>(_value.text, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationAyahCopyWith<$Res> get translation {
    return $TranslationAyahCopyWith<$Res>(_value.translation, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioAyahCopyWith<$Res> get audio {
    return $AudioAyahCopyWith<$Res>(_value.audio, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TafsirAyahCopyWith<$Res> get tafsir {
    return $TafsirAyahCopyWith<$Res>(_value.tafsir, (value) {
      return _then(_value.copyWith(tafsir: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahAyahCopyWith<$Res> get surah {
    return $SurahAyahCopyWith<$Res>(_value.surah, (value) {
      return _then(_value.copyWith(surah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AyahImplCopyWith<$Res> implements $AyahCopyWith<$Res> {
  factory _$$AyahImplCopyWith(
          _$AyahImpl value, $Res Function(_$AyahImpl) then) =
      __$$AyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NumberAyah number,
      MetaAyah meta,
      TextAyah text,
      TranslationAyah translation,
      AudioAyah audio,
      TafsirAyah tafsir,
      SurahAyah surah});

  @override
  $NumberAyahCopyWith<$Res> get number;
  @override
  $MetaAyahCopyWith<$Res> get meta;
  @override
  $TextAyahCopyWith<$Res> get text;
  @override
  $TranslationAyahCopyWith<$Res> get translation;
  @override
  $AudioAyahCopyWith<$Res> get audio;
  @override
  $TafsirAyahCopyWith<$Res> get tafsir;
  @override
  $SurahAyahCopyWith<$Res> get surah;
}

/// @nodoc
class __$$AyahImplCopyWithImpl<$Res>
    extends _$AyahCopyWithImpl<$Res, _$AyahImpl>
    implements _$$AyahImplCopyWith<$Res> {
  __$$AyahImplCopyWithImpl(_$AyahImpl _value, $Res Function(_$AyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? meta = null,
    Object? text = null,
    Object? translation = null,
    Object? audio = null,
    Object? tafsir = null,
    Object? surah = null,
  }) {
    return _then(_$AyahImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as NumberAyah,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaAyah,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextAyah,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyah,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioAyah,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as TafsirAyah,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as SurahAyah,
    ));
  }
}

/// @nodoc

class _$AyahImpl implements _Ayah {
  const _$AyahImpl(
      {required this.number,
      required this.meta,
      required this.text,
      required this.translation,
      required this.audio,
      required this.tafsir,
      required this.surah});

  @override
  final NumberAyah number;
  @override
  final MetaAyah meta;
  @override
  final TextAyah text;
  @override
  final TranslationAyah translation;
  @override
  final AudioAyah audio;
  @override
  final TafsirAyah tafsir;
  @override
  final SurahAyah surah;

  @override
  String toString() {
    return 'Ayah(number: $number, meta: $meta, text: $text, translation: $translation, audio: $audio, tafsir: $tafsir, surah: $surah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.tafsir, tafsir) || other.tafsir == tafsir) &&
            (identical(other.surah, surah) || other.surah == surah));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, number, meta, text, translation, audio, tafsir, surah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      __$$AyahImplCopyWithImpl<_$AyahImpl>(this, _$identity);
}

abstract class _Ayah implements Ayah {
  const factory _Ayah(
      {required final NumberAyah number,
      required final MetaAyah meta,
      required final TextAyah text,
      required final TranslationAyah translation,
      required final AudioAyah audio,
      required final TafsirAyah tafsir,
      required final SurahAyah surah}) = _$AyahImpl;

  @override
  NumberAyah get number;
  @override
  MetaAyah get meta;
  @override
  TextAyah get text;
  @override
  TranslationAyah get translation;
  @override
  AudioAyah get audio;
  @override
  TafsirAyah get tafsir;
  @override
  SurahAyah get surah;
  @override
  @JsonKey(ignore: true)
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AudioAyah {
  String get primary => throw _privateConstructorUsedError;
  List<String> get secondary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioAyahCopyWith<AudioAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioAyahCopyWith<$Res> {
  factory $AudioAyahCopyWith(AudioAyah value, $Res Function(AudioAyah) then) =
      _$AudioAyahCopyWithImpl<$Res, AudioAyah>;
  @useResult
  $Res call({String primary, List<String> secondary});
}

/// @nodoc
class _$AudioAyahCopyWithImpl<$Res, $Val extends AudioAyah>
    implements $AudioAyahCopyWith<$Res> {
  _$AudioAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? secondary = null,
  }) {
    return _then(_value.copyWith(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioAyahImplCopyWith<$Res>
    implements $AudioAyahCopyWith<$Res> {
  factory _$$AudioAyahImplCopyWith(
          _$AudioAyahImpl value, $Res Function(_$AudioAyahImpl) then) =
      __$$AudioAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String primary, List<String> secondary});
}

/// @nodoc
class __$$AudioAyahImplCopyWithImpl<$Res>
    extends _$AudioAyahCopyWithImpl<$Res, _$AudioAyahImpl>
    implements _$$AudioAyahImplCopyWith<$Res> {
  __$$AudioAyahImplCopyWithImpl(
      _$AudioAyahImpl _value, $Res Function(_$AudioAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? secondary = null,
  }) {
    return _then(_$AudioAyahImpl(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String,
      secondary: null == secondary
          ? _value._secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AudioAyahImpl implements _AudioAyah {
  const _$AudioAyahImpl(
      {required this.primary, required final List<String> secondary})
      : _secondary = secondary;

  @override
  final String primary;
  final List<String> _secondary;
  @override
  List<String> get secondary {
    if (_secondary is EqualUnmodifiableListView) return _secondary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_secondary);
  }

  @override
  String toString() {
    return 'AudioAyah(primary: $primary, secondary: $secondary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioAyahImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            const DeepCollectionEquality()
                .equals(other._secondary, _secondary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, primary, const DeepCollectionEquality().hash(_secondary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioAyahImplCopyWith<_$AudioAyahImpl> get copyWith =>
      __$$AudioAyahImplCopyWithImpl<_$AudioAyahImpl>(this, _$identity);
}

abstract class _AudioAyah implements AudioAyah {
  const factory _AudioAyah(
      {required final String primary,
      required final List<String> secondary}) = _$AudioAyahImpl;

  @override
  String get primary;
  @override
  List<String> get secondary;
  @override
  @JsonKey(ignore: true)
  _$$AudioAyahImplCopyWith<_$AudioAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MetaAyah {
  int get juz => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get manzil => throw _privateConstructorUsedError;
  int get ruku => throw _privateConstructorUsedError;
  int get hizbQuarter => throw _privateConstructorUsedError;
  SajdaAyah get sajda => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetaAyahCopyWith<MetaAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaAyahCopyWith<$Res> {
  factory $MetaAyahCopyWith(MetaAyah value, $Res Function(MetaAyah) then) =
      _$MetaAyahCopyWithImpl<$Res, MetaAyah>;
  @useResult
  $Res call(
      {int juz,
      int page,
      int manzil,
      int ruku,
      int hizbQuarter,
      SajdaAyah sajda});

  $SajdaAyahCopyWith<$Res> get sajda;
}

/// @nodoc
class _$MetaAyahCopyWithImpl<$Res, $Val extends MetaAyah>
    implements $MetaAyahCopyWith<$Res> {
  _$MetaAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? juz = null,
    Object? page = null,
    Object? manzil = null,
    Object? ruku = null,
    Object? hizbQuarter = null,
    Object? sajda = null,
  }) {
    return _then(_value.copyWith(
      juz: null == juz
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      manzil: null == manzil
          ? _value.manzil
          : manzil // ignore: cast_nullable_to_non_nullable
              as int,
      ruku: null == ruku
          ? _value.ruku
          : ruku // ignore: cast_nullable_to_non_nullable
              as int,
      hizbQuarter: null == hizbQuarter
          ? _value.hizbQuarter
          : hizbQuarter // ignore: cast_nullable_to_non_nullable
              as int,
      sajda: null == sajda
          ? _value.sajda
          : sajda // ignore: cast_nullable_to_non_nullable
              as SajdaAyah,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SajdaAyahCopyWith<$Res> get sajda {
    return $SajdaAyahCopyWith<$Res>(_value.sajda, (value) {
      return _then(_value.copyWith(sajda: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaAyahImplCopyWith<$Res>
    implements $MetaAyahCopyWith<$Res> {
  factory _$$MetaAyahImplCopyWith(
          _$MetaAyahImpl value, $Res Function(_$MetaAyahImpl) then) =
      __$$MetaAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int juz,
      int page,
      int manzil,
      int ruku,
      int hizbQuarter,
      SajdaAyah sajda});

  @override
  $SajdaAyahCopyWith<$Res> get sajda;
}

/// @nodoc
class __$$MetaAyahImplCopyWithImpl<$Res>
    extends _$MetaAyahCopyWithImpl<$Res, _$MetaAyahImpl>
    implements _$$MetaAyahImplCopyWith<$Res> {
  __$$MetaAyahImplCopyWithImpl(
      _$MetaAyahImpl _value, $Res Function(_$MetaAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? juz = null,
    Object? page = null,
    Object? manzil = null,
    Object? ruku = null,
    Object? hizbQuarter = null,
    Object? sajda = null,
  }) {
    return _then(_$MetaAyahImpl(
      juz: null == juz
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      manzil: null == manzil
          ? _value.manzil
          : manzil // ignore: cast_nullable_to_non_nullable
              as int,
      ruku: null == ruku
          ? _value.ruku
          : ruku // ignore: cast_nullable_to_non_nullable
              as int,
      hizbQuarter: null == hizbQuarter
          ? _value.hizbQuarter
          : hizbQuarter // ignore: cast_nullable_to_non_nullable
              as int,
      sajda: null == sajda
          ? _value.sajda
          : sajda // ignore: cast_nullable_to_non_nullable
              as SajdaAyah,
    ));
  }
}

/// @nodoc

class _$MetaAyahImpl implements _MetaAyah {
  const _$MetaAyahImpl(
      {required this.juz,
      required this.page,
      required this.manzil,
      required this.ruku,
      required this.hizbQuarter,
      required this.sajda});

  @override
  final int juz;
  @override
  final int page;
  @override
  final int manzil;
  @override
  final int ruku;
  @override
  final int hizbQuarter;
  @override
  final SajdaAyah sajda;

  @override
  String toString() {
    return 'MetaAyah(juz: $juz, page: $page, manzil: $manzil, ruku: $ruku, hizbQuarter: $hizbQuarter, sajda: $sajda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaAyahImpl &&
            (identical(other.juz, juz) || other.juz == juz) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.manzil, manzil) || other.manzil == manzil) &&
            (identical(other.ruku, ruku) || other.ruku == ruku) &&
            (identical(other.hizbQuarter, hizbQuarter) ||
                other.hizbQuarter == hizbQuarter) &&
            (identical(other.sajda, sajda) || other.sajda == sajda));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, juz, page, manzil, ruku, hizbQuarter, sajda);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaAyahImplCopyWith<_$MetaAyahImpl> get copyWith =>
      __$$MetaAyahImplCopyWithImpl<_$MetaAyahImpl>(this, _$identity);
}

abstract class _MetaAyah implements MetaAyah {
  const factory _MetaAyah(
      {required final int juz,
      required final int page,
      required final int manzil,
      required final int ruku,
      required final int hizbQuarter,
      required final SajdaAyah sajda}) = _$MetaAyahImpl;

  @override
  int get juz;
  @override
  int get page;
  @override
  int get manzil;
  @override
  int get ruku;
  @override
  int get hizbQuarter;
  @override
  SajdaAyah get sajda;
  @override
  @JsonKey(ignore: true)
  _$$MetaAyahImplCopyWith<_$MetaAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SajdaAyah {
  bool get recommended => throw _privateConstructorUsedError;
  bool get obligatory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SajdaAyahCopyWith<SajdaAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SajdaAyahCopyWith<$Res> {
  factory $SajdaAyahCopyWith(SajdaAyah value, $Res Function(SajdaAyah) then) =
      _$SajdaAyahCopyWithImpl<$Res, SajdaAyah>;
  @useResult
  $Res call({bool recommended, bool obligatory});
}

/// @nodoc
class _$SajdaAyahCopyWithImpl<$Res, $Val extends SajdaAyah>
    implements $SajdaAyahCopyWith<$Res> {
  _$SajdaAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommended = null,
    Object? obligatory = null,
  }) {
    return _then(_value.copyWith(
      recommended: null == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool,
      obligatory: null == obligatory
          ? _value.obligatory
          : obligatory // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SajdaAyahImplCopyWith<$Res>
    implements $SajdaAyahCopyWith<$Res> {
  factory _$$SajdaAyahImplCopyWith(
          _$SajdaAyahImpl value, $Res Function(_$SajdaAyahImpl) then) =
      __$$SajdaAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool recommended, bool obligatory});
}

/// @nodoc
class __$$SajdaAyahImplCopyWithImpl<$Res>
    extends _$SajdaAyahCopyWithImpl<$Res, _$SajdaAyahImpl>
    implements _$$SajdaAyahImplCopyWith<$Res> {
  __$$SajdaAyahImplCopyWithImpl(
      _$SajdaAyahImpl _value, $Res Function(_$SajdaAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommended = null,
    Object? obligatory = null,
  }) {
    return _then(_$SajdaAyahImpl(
      recommended: null == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool,
      obligatory: null == obligatory
          ? _value.obligatory
          : obligatory // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SajdaAyahImpl implements _SajdaAyah {
  const _$SajdaAyahImpl({required this.recommended, required this.obligatory});

  @override
  final bool recommended;
  @override
  final bool obligatory;

  @override
  String toString() {
    return 'SajdaAyah(recommended: $recommended, obligatory: $obligatory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SajdaAyahImpl &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.obligatory, obligatory) ||
                other.obligatory == obligatory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recommended, obligatory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SajdaAyahImplCopyWith<_$SajdaAyahImpl> get copyWith =>
      __$$SajdaAyahImplCopyWithImpl<_$SajdaAyahImpl>(this, _$identity);
}

abstract class _SajdaAyah implements SajdaAyah {
  const factory _SajdaAyah(
      {required final bool recommended,
      required final bool obligatory}) = _$SajdaAyahImpl;

  @override
  bool get recommended;
  @override
  bool get obligatory;
  @override
  @JsonKey(ignore: true)
  _$$SajdaAyahImplCopyWith<_$SajdaAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NumberAyah {
  int get inQuran => throw _privateConstructorUsedError;
  int get inSurah => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumberAyahCopyWith<NumberAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberAyahCopyWith<$Res> {
  factory $NumberAyahCopyWith(
          NumberAyah value, $Res Function(NumberAyah) then) =
      _$NumberAyahCopyWithImpl<$Res, NumberAyah>;
  @useResult
  $Res call({int inQuran, int inSurah});
}

/// @nodoc
class _$NumberAyahCopyWithImpl<$Res, $Val extends NumberAyah>
    implements $NumberAyahCopyWith<$Res> {
  _$NumberAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inQuran = null,
    Object? inSurah = null,
  }) {
    return _then(_value.copyWith(
      inQuran: null == inQuran
          ? _value.inQuran
          : inQuran // ignore: cast_nullable_to_non_nullable
              as int,
      inSurah: null == inSurah
          ? _value.inSurah
          : inSurah // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NumberAyahImplCopyWith<$Res>
    implements $NumberAyahCopyWith<$Res> {
  factory _$$NumberAyahImplCopyWith(
          _$NumberAyahImpl value, $Res Function(_$NumberAyahImpl) then) =
      __$$NumberAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int inQuran, int inSurah});
}

/// @nodoc
class __$$NumberAyahImplCopyWithImpl<$Res>
    extends _$NumberAyahCopyWithImpl<$Res, _$NumberAyahImpl>
    implements _$$NumberAyahImplCopyWith<$Res> {
  __$$NumberAyahImplCopyWithImpl(
      _$NumberAyahImpl _value, $Res Function(_$NumberAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inQuran = null,
    Object? inSurah = null,
  }) {
    return _then(_$NumberAyahImpl(
      inQuran: null == inQuran
          ? _value.inQuran
          : inQuran // ignore: cast_nullable_to_non_nullable
              as int,
      inSurah: null == inSurah
          ? _value.inSurah
          : inSurah // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NumberAyahImpl implements _NumberAyah {
  const _$NumberAyahImpl({required this.inQuran, required this.inSurah});

  @override
  final int inQuran;
  @override
  final int inSurah;

  @override
  String toString() {
    return 'NumberAyah(inQuran: $inQuran, inSurah: $inSurah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberAyahImpl &&
            (identical(other.inQuran, inQuran) || other.inQuran == inQuran) &&
            (identical(other.inSurah, inSurah) || other.inSurah == inSurah));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inQuran, inSurah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberAyahImplCopyWith<_$NumberAyahImpl> get copyWith =>
      __$$NumberAyahImplCopyWithImpl<_$NumberAyahImpl>(this, _$identity);
}

abstract class _NumberAyah implements NumberAyah {
  const factory _NumberAyah(
      {required final int inQuran,
      required final int inSurah}) = _$NumberAyahImpl;

  @override
  int get inQuran;
  @override
  int get inSurah;
  @override
  @JsonKey(ignore: true)
  _$$NumberAyahImplCopyWith<_$NumberAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SurahAyah {
  int get number => throw _privateConstructorUsedError;
  int get sequence => throw _privateConstructorUsedError;
  int get numberOfVerses => throw _privateConstructorUsedError;
  NameAyah get name => throw _privateConstructorUsedError;
  RevelationAyah get revelation => throw _privateConstructorUsedError;
  SurahAyahTafsir get tafsir => throw _privateConstructorUsedError;
  PreBismillahAyah get preBismillah => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurahAyahCopyWith<SurahAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahAyahCopyWith<$Res> {
  factory $SurahAyahCopyWith(SurahAyah value, $Res Function(SurahAyah) then) =
      _$SurahAyahCopyWithImpl<$Res, SurahAyah>;
  @useResult
  $Res call(
      {int number,
      int sequence,
      int numberOfVerses,
      NameAyah name,
      RevelationAyah revelation,
      SurahAyahTafsir tafsir,
      PreBismillahAyah preBismillah});

  $NameAyahCopyWith<$Res> get name;
  $RevelationAyahCopyWith<$Res> get revelation;
  $SurahAyahTafsirCopyWith<$Res> get tafsir;
  $PreBismillahAyahCopyWith<$Res> get preBismillah;
}

/// @nodoc
class _$SurahAyahCopyWithImpl<$Res, $Val extends SurahAyah>
    implements $SurahAyahCopyWith<$Res> {
  _$SurahAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? sequence = null,
    Object? numberOfVerses = null,
    Object? name = null,
    Object? revelation = null,
    Object? tafsir = null,
    Object? preBismillah = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfVerses: null == numberOfVerses
          ? _value.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameAyah,
      revelation: null == revelation
          ? _value.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as RevelationAyah,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as SurahAyahTafsir,
      preBismillah: null == preBismillah
          ? _value.preBismillah
          : preBismillah // ignore: cast_nullable_to_non_nullable
              as PreBismillahAyah,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameAyahCopyWith<$Res> get name {
    return $NameAyahCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RevelationAyahCopyWith<$Res> get revelation {
    return $RevelationAyahCopyWith<$Res>(_value.revelation, (value) {
      return _then(_value.copyWith(revelation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahAyahTafsirCopyWith<$Res> get tafsir {
    return $SurahAyahTafsirCopyWith<$Res>(_value.tafsir, (value) {
      return _then(_value.copyWith(tafsir: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PreBismillahAyahCopyWith<$Res> get preBismillah {
    return $PreBismillahAyahCopyWith<$Res>(_value.preBismillah, (value) {
      return _then(_value.copyWith(preBismillah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurahAyahImplCopyWith<$Res>
    implements $SurahAyahCopyWith<$Res> {
  factory _$$SurahAyahImplCopyWith(
          _$SurahAyahImpl value, $Res Function(_$SurahAyahImpl) then) =
      __$$SurahAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      int sequence,
      int numberOfVerses,
      NameAyah name,
      RevelationAyah revelation,
      SurahAyahTafsir tafsir,
      PreBismillahAyah preBismillah});

  @override
  $NameAyahCopyWith<$Res> get name;
  @override
  $RevelationAyahCopyWith<$Res> get revelation;
  @override
  $SurahAyahTafsirCopyWith<$Res> get tafsir;
  @override
  $PreBismillahAyahCopyWith<$Res> get preBismillah;
}

/// @nodoc
class __$$SurahAyahImplCopyWithImpl<$Res>
    extends _$SurahAyahCopyWithImpl<$Res, _$SurahAyahImpl>
    implements _$$SurahAyahImplCopyWith<$Res> {
  __$$SurahAyahImplCopyWithImpl(
      _$SurahAyahImpl _value, $Res Function(_$SurahAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? sequence = null,
    Object? numberOfVerses = null,
    Object? name = null,
    Object? revelation = null,
    Object? tafsir = null,
    Object? preBismillah = null,
  }) {
    return _then(_$SurahAyahImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfVerses: null == numberOfVerses
          ? _value.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameAyah,
      revelation: null == revelation
          ? _value.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as RevelationAyah,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as SurahAyahTafsir,
      preBismillah: null == preBismillah
          ? _value.preBismillah
          : preBismillah // ignore: cast_nullable_to_non_nullable
              as PreBismillahAyah,
    ));
  }
}

/// @nodoc

class _$SurahAyahImpl implements _SurahAyah {
  const _$SurahAyahImpl(
      {required this.number,
      required this.sequence,
      required this.numberOfVerses,
      required this.name,
      required this.revelation,
      required this.tafsir,
      required this.preBismillah});

  @override
  final int number;
  @override
  final int sequence;
  @override
  final int numberOfVerses;
  @override
  final NameAyah name;
  @override
  final RevelationAyah revelation;
  @override
  final SurahAyahTafsir tafsir;
  @override
  final PreBismillahAyah preBismillah;

  @override
  String toString() {
    return 'SurahAyah(number: $number, sequence: $sequence, numberOfVerses: $numberOfVerses, name: $name, revelation: $revelation, tafsir: $tafsir, preBismillah: $preBismillah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahAyahImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.numberOfVerses, numberOfVerses) ||
                other.numberOfVerses == numberOfVerses) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.revelation, revelation) ||
                other.revelation == revelation) &&
            (identical(other.tafsir, tafsir) || other.tafsir == tafsir) &&
            (identical(other.preBismillah, preBismillah) ||
                other.preBismillah == preBismillah));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, sequence, numberOfVerses,
      name, revelation, tafsir, preBismillah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahAyahImplCopyWith<_$SurahAyahImpl> get copyWith =>
      __$$SurahAyahImplCopyWithImpl<_$SurahAyahImpl>(this, _$identity);
}

abstract class _SurahAyah implements SurahAyah {
  const factory _SurahAyah(
      {required final int number,
      required final int sequence,
      required final int numberOfVerses,
      required final NameAyah name,
      required final RevelationAyah revelation,
      required final SurahAyahTafsir tafsir,
      required final PreBismillahAyah preBismillah}) = _$SurahAyahImpl;

  @override
  int get number;
  @override
  int get sequence;
  @override
  int get numberOfVerses;
  @override
  NameAyah get name;
  @override
  RevelationAyah get revelation;
  @override
  SurahAyahTafsir get tafsir;
  @override
  PreBismillahAyah get preBismillah;
  @override
  @JsonKey(ignore: true)
  _$$SurahAyahImplCopyWith<_$SurahAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NameAyah {
  String get short => throw _privateConstructorUsedError;
  String get long => throw _privateConstructorUsedError;
  TranslationAyah get transliteration => throw _privateConstructorUsedError;
  TranslationAyah get translation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NameAyahCopyWith<NameAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameAyahCopyWith<$Res> {
  factory $NameAyahCopyWith(NameAyah value, $Res Function(NameAyah) then) =
      _$NameAyahCopyWithImpl<$Res, NameAyah>;
  @useResult
  $Res call(
      {String short,
      String long,
      TranslationAyah transliteration,
      TranslationAyah translation});

  $TranslationAyahCopyWith<$Res> get transliteration;
  $TranslationAyahCopyWith<$Res> get translation;
}

/// @nodoc
class _$NameAyahCopyWithImpl<$Res, $Val extends NameAyah>
    implements $NameAyahCopyWith<$Res> {
  _$NameAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? long = null,
    Object? transliteration = null,
    Object? translation = null,
  }) {
    return _then(_value.copyWith(
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as TranslationAyah,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyah,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationAyahCopyWith<$Res> get transliteration {
    return $TranslationAyahCopyWith<$Res>(_value.transliteration, (value) {
      return _then(_value.copyWith(transliteration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationAyahCopyWith<$Res> get translation {
    return $TranslationAyahCopyWith<$Res>(_value.translation, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NameAyahImplCopyWith<$Res>
    implements $NameAyahCopyWith<$Res> {
  factory _$$NameAyahImplCopyWith(
          _$NameAyahImpl value, $Res Function(_$NameAyahImpl) then) =
      __$$NameAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String short,
      String long,
      TranslationAyah transliteration,
      TranslationAyah translation});

  @override
  $TranslationAyahCopyWith<$Res> get transliteration;
  @override
  $TranslationAyahCopyWith<$Res> get translation;
}

/// @nodoc
class __$$NameAyahImplCopyWithImpl<$Res>
    extends _$NameAyahCopyWithImpl<$Res, _$NameAyahImpl>
    implements _$$NameAyahImplCopyWith<$Res> {
  __$$NameAyahImplCopyWithImpl(
      _$NameAyahImpl _value, $Res Function(_$NameAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? long = null,
    Object? transliteration = null,
    Object? translation = null,
  }) {
    return _then(_$NameAyahImpl(
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as TranslationAyah,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyah,
    ));
  }
}

/// @nodoc

class _$NameAyahImpl implements _NameAyah {
  const _$NameAyahImpl(
      {required this.short,
      required this.long,
      required this.transliteration,
      required this.translation});

  @override
  final String short;
  @override
  final String long;
  @override
  final TranslationAyah transliteration;
  @override
  final TranslationAyah translation;

  @override
  String toString() {
    return 'NameAyah(short: $short, long: $long, transliteration: $transliteration, translation: $translation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameAyahImpl &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration) &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, short, long, transliteration, translation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameAyahImplCopyWith<_$NameAyahImpl> get copyWith =>
      __$$NameAyahImplCopyWithImpl<_$NameAyahImpl>(this, _$identity);
}

abstract class _NameAyah implements NameAyah {
  const factory _NameAyah(
      {required final String short,
      required final String long,
      required final TranslationAyah transliteration,
      required final TranslationAyah translation}) = _$NameAyahImpl;

  @override
  String get short;
  @override
  String get long;
  @override
  TranslationAyah get transliteration;
  @override
  TranslationAyah get translation;
  @override
  @JsonKey(ignore: true)
  _$$NameAyahImplCopyWith<_$NameAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TranslationAyah {
  String get en => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslationAyahCopyWith<TranslationAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationAyahCopyWith<$Res> {
  factory $TranslationAyahCopyWith(
          TranslationAyah value, $Res Function(TranslationAyah) then) =
      _$TranslationAyahCopyWithImpl<$Res, TranslationAyah>;
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class _$TranslationAyahCopyWithImpl<$Res, $Val extends TranslationAyah>
    implements $TranslationAyahCopyWith<$Res> {
  _$TranslationAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationAyahImplCopyWith<$Res>
    implements $TranslationAyahCopyWith<$Res> {
  factory _$$TranslationAyahImplCopyWith(_$TranslationAyahImpl value,
          $Res Function(_$TranslationAyahImpl) then) =
      __$$TranslationAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class __$$TranslationAyahImplCopyWithImpl<$Res>
    extends _$TranslationAyahCopyWithImpl<$Res, _$TranslationAyahImpl>
    implements _$$TranslationAyahImplCopyWith<$Res> {
  __$$TranslationAyahImplCopyWithImpl(
      _$TranslationAyahImpl _value, $Res Function(_$TranslationAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_$TranslationAyahImpl(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TranslationAyahImpl implements _TranslationAyah {
  const _$TranslationAyahImpl({required this.en, required this.id});

  @override
  final String en;
  @override
  final String id;

  @override
  String toString() {
    return 'TranslationAyah(en: $en, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationAyahImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, en, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationAyahImplCopyWith<_$TranslationAyahImpl> get copyWith =>
      __$$TranslationAyahImplCopyWithImpl<_$TranslationAyahImpl>(
          this, _$identity);
}

abstract class _TranslationAyah implements TranslationAyah {
  const factory _TranslationAyah(
      {required final String en,
      required final String id}) = _$TranslationAyahImpl;

  @override
  String get en;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$TranslationAyahImplCopyWith<_$TranslationAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PreBismillahAyah {
  TextAyah get text => throw _privateConstructorUsedError;
  TranslationAyah get translation => throw _privateConstructorUsedError;
  AudioAyah get audio => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreBismillahAyahCopyWith<PreBismillahAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreBismillahAyahCopyWith<$Res> {
  factory $PreBismillahAyahCopyWith(
          PreBismillahAyah value, $Res Function(PreBismillahAyah) then) =
      _$PreBismillahAyahCopyWithImpl<$Res, PreBismillahAyah>;
  @useResult
  $Res call({TextAyah text, TranslationAyah translation, AudioAyah audio});

  $TextAyahCopyWith<$Res> get text;
  $TranslationAyahCopyWith<$Res> get translation;
  $AudioAyahCopyWith<$Res> get audio;
}

/// @nodoc
class _$PreBismillahAyahCopyWithImpl<$Res, $Val extends PreBismillahAyah>
    implements $PreBismillahAyahCopyWith<$Res> {
  _$PreBismillahAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? translation = null,
    Object? audio = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextAyah,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyah,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioAyah,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextAyahCopyWith<$Res> get text {
    return $TextAyahCopyWith<$Res>(_value.text, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationAyahCopyWith<$Res> get translation {
    return $TranslationAyahCopyWith<$Res>(_value.translation, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioAyahCopyWith<$Res> get audio {
    return $AudioAyahCopyWith<$Res>(_value.audio, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreBismillahAyahImplCopyWith<$Res>
    implements $PreBismillahAyahCopyWith<$Res> {
  factory _$$PreBismillahAyahImplCopyWith(_$PreBismillahAyahImpl value,
          $Res Function(_$PreBismillahAyahImpl) then) =
      __$$PreBismillahAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextAyah text, TranslationAyah translation, AudioAyah audio});

  @override
  $TextAyahCopyWith<$Res> get text;
  @override
  $TranslationAyahCopyWith<$Res> get translation;
  @override
  $AudioAyahCopyWith<$Res> get audio;
}

/// @nodoc
class __$$PreBismillahAyahImplCopyWithImpl<$Res>
    extends _$PreBismillahAyahCopyWithImpl<$Res, _$PreBismillahAyahImpl>
    implements _$$PreBismillahAyahImplCopyWith<$Res> {
  __$$PreBismillahAyahImplCopyWithImpl(_$PreBismillahAyahImpl _value,
      $Res Function(_$PreBismillahAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? translation = null,
    Object? audio = null,
  }) {
    return _then(_$PreBismillahAyahImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextAyah,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyah,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioAyah,
    ));
  }
}

/// @nodoc

class _$PreBismillahAyahImpl implements _PreBismillahAyah {
  const _$PreBismillahAyahImpl(
      {required this.text, required this.translation, required this.audio});

  @override
  final TextAyah text;
  @override
  final TranslationAyah translation;
  @override
  final AudioAyah audio;

  @override
  String toString() {
    return 'PreBismillahAyah(text: $text, translation: $translation, audio: $audio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreBismillahAyahImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.audio, audio) || other.audio == audio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, translation, audio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreBismillahAyahImplCopyWith<_$PreBismillahAyahImpl> get copyWith =>
      __$$PreBismillahAyahImplCopyWithImpl<_$PreBismillahAyahImpl>(
          this, _$identity);
}

abstract class _PreBismillahAyah implements PreBismillahAyah {
  const factory _PreBismillahAyah(
      {required final TextAyah text,
      required final TranslationAyah translation,
      required final AudioAyah audio}) = _$PreBismillahAyahImpl;

  @override
  TextAyah get text;
  @override
  TranslationAyah get translation;
  @override
  AudioAyah get audio;
  @override
  @JsonKey(ignore: true)
  _$$PreBismillahAyahImplCopyWith<_$PreBismillahAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TextAyah {
  String get arab => throw _privateConstructorUsedError;
  TransliterationAyah get transliteration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextAyahCopyWith<TextAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextAyahCopyWith<$Res> {
  factory $TextAyahCopyWith(TextAyah value, $Res Function(TextAyah) then) =
      _$TextAyahCopyWithImpl<$Res, TextAyah>;
  @useResult
  $Res call({String arab, TransliterationAyah transliteration});

  $TransliterationAyahCopyWith<$Res> get transliteration;
}

/// @nodoc
class _$TextAyahCopyWithImpl<$Res, $Val extends TextAyah>
    implements $TextAyahCopyWith<$Res> {
  _$TextAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? transliteration = null,
  }) {
    return _then(_value.copyWith(
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as TransliterationAyah,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransliterationAyahCopyWith<$Res> get transliteration {
    return $TransliterationAyahCopyWith<$Res>(_value.transliteration, (value) {
      return _then(_value.copyWith(transliteration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextAyahImplCopyWith<$Res>
    implements $TextAyahCopyWith<$Res> {
  factory _$$TextAyahImplCopyWith(
          _$TextAyahImpl value, $Res Function(_$TextAyahImpl) then) =
      __$$TextAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String arab, TransliterationAyah transliteration});

  @override
  $TransliterationAyahCopyWith<$Res> get transliteration;
}

/// @nodoc
class __$$TextAyahImplCopyWithImpl<$Res>
    extends _$TextAyahCopyWithImpl<$Res, _$TextAyahImpl>
    implements _$$TextAyahImplCopyWith<$Res> {
  __$$TextAyahImplCopyWithImpl(
      _$TextAyahImpl _value, $Res Function(_$TextAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? transliteration = null,
  }) {
    return _then(_$TextAyahImpl(
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as TransliterationAyah,
    ));
  }
}

/// @nodoc

class _$TextAyahImpl implements _TextAyah {
  const _$TextAyahImpl({required this.arab, required this.transliteration});

  @override
  final String arab;
  @override
  final TransliterationAyah transliteration;

  @override
  String toString() {
    return 'TextAyah(arab: $arab, transliteration: $transliteration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextAyahImpl &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arab, transliteration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextAyahImplCopyWith<_$TextAyahImpl> get copyWith =>
      __$$TextAyahImplCopyWithImpl<_$TextAyahImpl>(this, _$identity);
}

abstract class _TextAyah implements TextAyah {
  const factory _TextAyah(
      {required final String arab,
      required final TransliterationAyah transliteration}) = _$TextAyahImpl;

  @override
  String get arab;
  @override
  TransliterationAyah get transliteration;
  @override
  @JsonKey(ignore: true)
  _$$TextAyahImplCopyWith<_$TextAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransliterationAyah {
  String get en => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransliterationAyahCopyWith<TransliterationAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransliterationAyahCopyWith<$Res> {
  factory $TransliterationAyahCopyWith(
          TransliterationAyah value, $Res Function(TransliterationAyah) then) =
      _$TransliterationAyahCopyWithImpl<$Res, TransliterationAyah>;
  @useResult
  $Res call({String en});
}

/// @nodoc
class _$TransliterationAyahCopyWithImpl<$Res, $Val extends TransliterationAyah>
    implements $TransliterationAyahCopyWith<$Res> {
  _$TransliterationAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
  }) {
    return _then(_value.copyWith(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransliterationAyahImplCopyWith<$Res>
    implements $TransliterationAyahCopyWith<$Res> {
  factory _$$TransliterationAyahImplCopyWith(_$TransliterationAyahImpl value,
          $Res Function(_$TransliterationAyahImpl) then) =
      __$$TransliterationAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String en});
}

/// @nodoc
class __$$TransliterationAyahImplCopyWithImpl<$Res>
    extends _$TransliterationAyahCopyWithImpl<$Res, _$TransliterationAyahImpl>
    implements _$$TransliterationAyahImplCopyWith<$Res> {
  __$$TransliterationAyahImplCopyWithImpl(_$TransliterationAyahImpl _value,
      $Res Function(_$TransliterationAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
  }) {
    return _then(_$TransliterationAyahImpl(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransliterationAyahImpl implements _TransliterationAyah {
  const _$TransliterationAyahImpl({required this.en});

  @override
  final String en;

  @override
  String toString() {
    return 'TransliterationAyah(en: $en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransliterationAyahImpl &&
            (identical(other.en, en) || other.en == en));
  }

  @override
  int get hashCode => Object.hash(runtimeType, en);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransliterationAyahImplCopyWith<_$TransliterationAyahImpl> get copyWith =>
      __$$TransliterationAyahImplCopyWithImpl<_$TransliterationAyahImpl>(
          this, _$identity);
}

abstract class _TransliterationAyah implements TransliterationAyah {
  const factory _TransliterationAyah({required final String en}) =
      _$TransliterationAyahImpl;

  @override
  String get en;
  @override
  @JsonKey(ignore: true)
  _$$TransliterationAyahImplCopyWith<_$TransliterationAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RevelationAyah {
  String get arab => throw _privateConstructorUsedError;
  String get en => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RevelationAyahCopyWith<RevelationAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevelationAyahCopyWith<$Res> {
  factory $RevelationAyahCopyWith(
          RevelationAyah value, $Res Function(RevelationAyah) then) =
      _$RevelationAyahCopyWithImpl<$Res, RevelationAyah>;
  @useResult
  $Res call({String arab, String en, String id});
}

/// @nodoc
class _$RevelationAyahCopyWithImpl<$Res, $Val extends RevelationAyah>
    implements $RevelationAyahCopyWith<$Res> {
  _$RevelationAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RevelationAyahImplCopyWith<$Res>
    implements $RevelationAyahCopyWith<$Res> {
  factory _$$RevelationAyahImplCopyWith(_$RevelationAyahImpl value,
          $Res Function(_$RevelationAyahImpl) then) =
      __$$RevelationAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String arab, String en, String id});
}

/// @nodoc
class __$$RevelationAyahImplCopyWithImpl<$Res>
    extends _$RevelationAyahCopyWithImpl<$Res, _$RevelationAyahImpl>
    implements _$$RevelationAyahImplCopyWith<$Res> {
  __$$RevelationAyahImplCopyWithImpl(
      _$RevelationAyahImpl _value, $Res Function(_$RevelationAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_$RevelationAyahImpl(
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RevelationAyahImpl implements _RevelationAyah {
  const _$RevelationAyahImpl(
      {required this.arab, required this.en, required this.id});

  @override
  final String arab;
  @override
  final String en;
  @override
  final String id;

  @override
  String toString() {
    return 'RevelationAyah(arab: $arab, en: $en, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevelationAyahImpl &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arab, en, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RevelationAyahImplCopyWith<_$RevelationAyahImpl> get copyWith =>
      __$$RevelationAyahImplCopyWithImpl<_$RevelationAyahImpl>(
          this, _$identity);
}

abstract class _RevelationAyah implements RevelationAyah {
  const factory _RevelationAyah(
      {required final String arab,
      required final String en,
      required final String id}) = _$RevelationAyahImpl;

  @override
  String get arab;
  @override
  String get en;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$RevelationAyahImplCopyWith<_$RevelationAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SurahAyahTafsir {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurahAyahTafsirCopyWith<SurahAyahTafsir> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahAyahTafsirCopyWith<$Res> {
  factory $SurahAyahTafsirCopyWith(
          SurahAyahTafsir value, $Res Function(SurahAyahTafsir) then) =
      _$SurahAyahTafsirCopyWithImpl<$Res, SurahAyahTafsir>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$SurahAyahTafsirCopyWithImpl<$Res, $Val extends SurahAyahTafsir>
    implements $SurahAyahTafsirCopyWith<$Res> {
  _$SurahAyahTafsirCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahAyahTafsirImplCopyWith<$Res>
    implements $SurahAyahTafsirCopyWith<$Res> {
  factory _$$SurahAyahTafsirImplCopyWith(_$SurahAyahTafsirImpl value,
          $Res Function(_$SurahAyahTafsirImpl) then) =
      __$$SurahAyahTafsirImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SurahAyahTafsirImplCopyWithImpl<$Res>
    extends _$SurahAyahTafsirCopyWithImpl<$Res, _$SurahAyahTafsirImpl>
    implements _$$SurahAyahTafsirImplCopyWith<$Res> {
  __$$SurahAyahTafsirImplCopyWithImpl(
      _$SurahAyahTafsirImpl _value, $Res Function(_$SurahAyahTafsirImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SurahAyahTafsirImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SurahAyahTafsirImpl implements _SurahAyahTafsir {
  const _$SurahAyahTafsirImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'SurahAyahTafsir(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahAyahTafsirImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahAyahTafsirImplCopyWith<_$SurahAyahTafsirImpl> get copyWith =>
      __$$SurahAyahTafsirImplCopyWithImpl<_$SurahAyahTafsirImpl>(
          this, _$identity);
}

abstract class _SurahAyahTafsir implements SurahAyahTafsir {
  const factory _SurahAyahTafsir({required final String id}) =
      _$SurahAyahTafsirImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$SurahAyahTafsirImplCopyWith<_$SurahAyahTafsirImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TafsirAyah {
  IdAyah get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TafsirAyahCopyWith<TafsirAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TafsirAyahCopyWith<$Res> {
  factory $TafsirAyahCopyWith(
          TafsirAyah value, $Res Function(TafsirAyah) then) =
      _$TafsirAyahCopyWithImpl<$Res, TafsirAyah>;
  @useResult
  $Res call({IdAyah id});

  $IdAyahCopyWith<$Res> get id;
}

/// @nodoc
class _$TafsirAyahCopyWithImpl<$Res, $Val extends TafsirAyah>
    implements $TafsirAyahCopyWith<$Res> {
  _$TafsirAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdAyah,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdAyahCopyWith<$Res> get id {
    return $IdAyahCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TafsirAyahImplCopyWith<$Res>
    implements $TafsirAyahCopyWith<$Res> {
  factory _$$TafsirAyahImplCopyWith(
          _$TafsirAyahImpl value, $Res Function(_$TafsirAyahImpl) then) =
      __$$TafsirAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IdAyah id});

  @override
  $IdAyahCopyWith<$Res> get id;
}

/// @nodoc
class __$$TafsirAyahImplCopyWithImpl<$Res>
    extends _$TafsirAyahCopyWithImpl<$Res, _$TafsirAyahImpl>
    implements _$$TafsirAyahImplCopyWith<$Res> {
  __$$TafsirAyahImplCopyWithImpl(
      _$TafsirAyahImpl _value, $Res Function(_$TafsirAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$TafsirAyahImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdAyah,
    ));
  }
}

/// @nodoc

class _$TafsirAyahImpl implements _TafsirAyah {
  const _$TafsirAyahImpl({required this.id});

  @override
  final IdAyah id;

  @override
  String toString() {
    return 'TafsirAyah(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TafsirAyahImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TafsirAyahImplCopyWith<_$TafsirAyahImpl> get copyWith =>
      __$$TafsirAyahImplCopyWithImpl<_$TafsirAyahImpl>(this, _$identity);
}

abstract class _TafsirAyah implements TafsirAyah {
  const factory _TafsirAyah({required final IdAyah id}) = _$TafsirAyahImpl;

  @override
  IdAyah get id;
  @override
  @JsonKey(ignore: true)
  _$$TafsirAyahImplCopyWith<_$TafsirAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IdAyah {
  String get short => throw _privateConstructorUsedError;
  String get long => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IdAyahCopyWith<IdAyah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdAyahCopyWith<$Res> {
  factory $IdAyahCopyWith(IdAyah value, $Res Function(IdAyah) then) =
      _$IdAyahCopyWithImpl<$Res, IdAyah>;
  @useResult
  $Res call({String short, String long});
}

/// @nodoc
class _$IdAyahCopyWithImpl<$Res, $Val extends IdAyah>
    implements $IdAyahCopyWith<$Res> {
  _$IdAyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdAyahImplCopyWith<$Res> implements $IdAyahCopyWith<$Res> {
  factory _$$IdAyahImplCopyWith(
          _$IdAyahImpl value, $Res Function(_$IdAyahImpl) then) =
      __$$IdAyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String short, String long});
}

/// @nodoc
class __$$IdAyahImplCopyWithImpl<$Res>
    extends _$IdAyahCopyWithImpl<$Res, _$IdAyahImpl>
    implements _$$IdAyahImplCopyWith<$Res> {
  __$$IdAyahImplCopyWithImpl(
      _$IdAyahImpl _value, $Res Function(_$IdAyahImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? long = null,
  }) {
    return _then(_$IdAyahImpl(
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IdAyahImpl implements _IdAyah {
  const _$IdAyahImpl({required this.short, required this.long});

  @override
  final String short;
  @override
  final String long;

  @override
  String toString() {
    return 'IdAyah(short: $short, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdAyahImpl &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.long, long) || other.long == long));
  }

  @override
  int get hashCode => Object.hash(runtimeType, short, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdAyahImplCopyWith<_$IdAyahImpl> get copyWith =>
      __$$IdAyahImplCopyWithImpl<_$IdAyahImpl>(this, _$identity);
}

abstract class _IdAyah implements IdAyah {
  const factory _IdAyah(
      {required final String short, required final String long}) = _$IdAyahImpl;

  @override
  String get short;
  @override
  String get long;
  @override
  @JsonKey(ignore: true)
  _$$IdAyahImplCopyWith<_$IdAyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
