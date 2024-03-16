// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AyahResModel _$AyahResModelFromJson(Map<String, dynamic> json) {
  return _AyahResModel.fromJson(json);
}

/// @nodoc
mixin _$AyahResModel {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  AyahModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AyahResModelCopyWith<AyahResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahResModelCopyWith<$Res> {
  factory $AyahResModelCopyWith(
          AyahResModel value, $Res Function(AyahResModel) then) =
      _$AyahResModelCopyWithImpl<$Res, AyahResModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") AyahModel data});

  $AyahModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AyahResModelCopyWithImpl<$Res, $Val extends AyahResModel>
    implements $AyahResModelCopyWith<$Res> {
  _$AyahResModelCopyWithImpl(this._value, this._then);

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
              as AyahModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AyahModelCopyWith<$Res> get data {
    return $AyahModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AyahResModelImplCopyWith<$Res>
    implements $AyahResModelCopyWith<$Res> {
  factory _$$AyahResModelImplCopyWith(
          _$AyahResModelImpl value, $Res Function(_$AyahResModelImpl) then) =
      __$$AyahResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") AyahModel data});

  @override
  $AyahModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$AyahResModelImplCopyWithImpl<$Res>
    extends _$AyahResModelCopyWithImpl<$Res, _$AyahResModelImpl>
    implements _$$AyahResModelImplCopyWith<$Res> {
  __$$AyahResModelImplCopyWithImpl(
      _$AyahResModelImpl _value, $Res Function(_$AyahResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AyahResModelImpl(
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
              as AyahModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AyahResModelImpl implements _AyahResModel {
  const _$AyahResModelImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required this.data});

  factory _$AyahResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahResModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final AyahModel data;

  @override
  String toString() {
    return 'AyahResModel(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahResModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahResModelImplCopyWith<_$AyahResModelImpl> get copyWith =>
      __$$AyahResModelImplCopyWithImpl<_$AyahResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyahResModelImplToJson(
      this,
    );
  }
}

abstract class _AyahResModel implements AyahResModel {
  const factory _AyahResModel(
          {@JsonKey(name: "code") required final int code,
          @JsonKey(name: "status") required final String status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final AyahModel data}) =
      _$AyahResModelImpl;

  factory _AyahResModel.fromJson(Map<String, dynamic> json) =
      _$AyahResModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  AyahModel get data;
  @override
  @JsonKey(ignore: true)
  _$$AyahResModelImplCopyWith<_$AyahResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AyahModel _$AyahModelFromJson(Map<String, dynamic> json) {
  return _AyahModel.fromJson(json);
}

/// @nodoc
mixin _$AyahModel {
  @JsonKey(name: "number")
  NumberAyahModel get number => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  MetaAyahModel get meta => throw _privateConstructorUsedError;
  @JsonKey(name: "text")
  TextsAyahModel get text => throw _privateConstructorUsedError;
  @JsonKey(name: "translation")
  TranslationAyahModel get translation => throw _privateConstructorUsedError;
  @JsonKey(name: "audio")
  AudioAyahModel get audio => throw _privateConstructorUsedError;
  @JsonKey(name: "tafsir")
  TafsirAyahModel get tafsir => throw _privateConstructorUsedError;
  @JsonKey(name: "surah")
  SurahAyahModel get surah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AyahModelCopyWith<AyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahModelCopyWith<$Res> {
  factory $AyahModelCopyWith(AyahModel value, $Res Function(AyahModel) then) =
      _$AyahModelCopyWithImpl<$Res, AyahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "number") NumberAyahModel number,
      @JsonKey(name: "meta") MetaAyahModel meta,
      @JsonKey(name: "text") TextsAyahModel text,
      @JsonKey(name: "translation") TranslationAyahModel translation,
      @JsonKey(name: "audio") AudioAyahModel audio,
      @JsonKey(name: "tafsir") TafsirAyahModel tafsir,
      @JsonKey(name: "surah") SurahAyahModel surah});

  $NumberAyahModelCopyWith<$Res> get number;
  $MetaAyahModelCopyWith<$Res> get meta;
  $TextsAyahModelCopyWith<$Res> get text;
  $TranslationAyahModelCopyWith<$Res> get translation;
  $AudioAyahModelCopyWith<$Res> get audio;
  $TafsirAyahModelCopyWith<$Res> get tafsir;
  $SurahAyahModelCopyWith<$Res> get surah;
}

/// @nodoc
class _$AyahModelCopyWithImpl<$Res, $Val extends AyahModel>
    implements $AyahModelCopyWith<$Res> {
  _$AyahModelCopyWithImpl(this._value, this._then);

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
              as NumberAyahModel,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaAyahModel,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextsAyahModel,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyahModel,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioAyahModel,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as TafsirAyahModel,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as SurahAyahModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NumberAyahModelCopyWith<$Res> get number {
    return $NumberAyahModelCopyWith<$Res>(_value.number, (value) {
      return _then(_value.copyWith(number: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaAyahModelCopyWith<$Res> get meta {
    return $MetaAyahModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextsAyahModelCopyWith<$Res> get text {
    return $TextsAyahModelCopyWith<$Res>(_value.text, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationAyahModelCopyWith<$Res> get translation {
    return $TranslationAyahModelCopyWith<$Res>(_value.translation, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioAyahModelCopyWith<$Res> get audio {
    return $AudioAyahModelCopyWith<$Res>(_value.audio, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TafsirAyahModelCopyWith<$Res> get tafsir {
    return $TafsirAyahModelCopyWith<$Res>(_value.tafsir, (value) {
      return _then(_value.copyWith(tafsir: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahAyahModelCopyWith<$Res> get surah {
    return $SurahAyahModelCopyWith<$Res>(_value.surah, (value) {
      return _then(_value.copyWith(surah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AyahModelImplCopyWith<$Res>
    implements $AyahModelCopyWith<$Res> {
  factory _$$AyahModelImplCopyWith(
          _$AyahModelImpl value, $Res Function(_$AyahModelImpl) then) =
      __$$AyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "number") NumberAyahModel number,
      @JsonKey(name: "meta") MetaAyahModel meta,
      @JsonKey(name: "text") TextsAyahModel text,
      @JsonKey(name: "translation") TranslationAyahModel translation,
      @JsonKey(name: "audio") AudioAyahModel audio,
      @JsonKey(name: "tafsir") TafsirAyahModel tafsir,
      @JsonKey(name: "surah") SurahAyahModel surah});

  @override
  $NumberAyahModelCopyWith<$Res> get number;
  @override
  $MetaAyahModelCopyWith<$Res> get meta;
  @override
  $TextsAyahModelCopyWith<$Res> get text;
  @override
  $TranslationAyahModelCopyWith<$Res> get translation;
  @override
  $AudioAyahModelCopyWith<$Res> get audio;
  @override
  $TafsirAyahModelCopyWith<$Res> get tafsir;
  @override
  $SurahAyahModelCopyWith<$Res> get surah;
}

/// @nodoc
class __$$AyahModelImplCopyWithImpl<$Res>
    extends _$AyahModelCopyWithImpl<$Res, _$AyahModelImpl>
    implements _$$AyahModelImplCopyWith<$Res> {
  __$$AyahModelImplCopyWithImpl(
      _$AyahModelImpl _value, $Res Function(_$AyahModelImpl) _then)
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
    return _then(_$AyahModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as NumberAyahModel,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaAyahModel,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextsAyahModel,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyahModel,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioAyahModel,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as TafsirAyahModel,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as SurahAyahModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AyahModelImpl implements _AyahModel {
  const _$AyahModelImpl(
      {@JsonKey(name: "number") required this.number,
      @JsonKey(name: "meta") required this.meta,
      @JsonKey(name: "text") required this.text,
      @JsonKey(name: "translation") required this.translation,
      @JsonKey(name: "audio") required this.audio,
      @JsonKey(name: "tafsir") required this.tafsir,
      @JsonKey(name: "surah") required this.surah});

  factory _$AyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahModelImplFromJson(json);

  @override
  @JsonKey(name: "number")
  final NumberAyahModel number;
  @override
  @JsonKey(name: "meta")
  final MetaAyahModel meta;
  @override
  @JsonKey(name: "text")
  final TextsAyahModel text;
  @override
  @JsonKey(name: "translation")
  final TranslationAyahModel translation;
  @override
  @JsonKey(name: "audio")
  final AudioAyahModel audio;
  @override
  @JsonKey(name: "tafsir")
  final TafsirAyahModel tafsir;
  @override
  @JsonKey(name: "surah")
  final SurahAyahModel surah;

  @override
  String toString() {
    return 'AyahModel(number: $number, meta: $meta, text: $text, translation: $translation, audio: $audio, tafsir: $tafsir, surah: $surah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.tafsir, tafsir) || other.tafsir == tafsir) &&
            (identical(other.surah, surah) || other.surah == surah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, number, meta, text, translation, audio, tafsir, surah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahModelImplCopyWith<_$AyahModelImpl> get copyWith =>
      __$$AyahModelImplCopyWithImpl<_$AyahModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyahModelImplToJson(
      this,
    );
  }
}

abstract class _AyahModel implements AyahModel {
  const factory _AyahModel(
          {@JsonKey(name: "number") required final NumberAyahModel number,
          @JsonKey(name: "meta") required final MetaAyahModel meta,
          @JsonKey(name: "text") required final TextsAyahModel text,
          @JsonKey(name: "translation")
          required final TranslationAyahModel translation,
          @JsonKey(name: "audio") required final AudioAyahModel audio,
          @JsonKey(name: "tafsir") required final TafsirAyahModel tafsir,
          @JsonKey(name: "surah") required final SurahAyahModel surah}) =
      _$AyahModelImpl;

  factory _AyahModel.fromJson(Map<String, dynamic> json) =
      _$AyahModelImpl.fromJson;

  @override
  @JsonKey(name: "number")
  NumberAyahModel get number;
  @override
  @JsonKey(name: "meta")
  MetaAyahModel get meta;
  @override
  @JsonKey(name: "text")
  TextsAyahModel get text;
  @override
  @JsonKey(name: "translation")
  TranslationAyahModel get translation;
  @override
  @JsonKey(name: "audio")
  AudioAyahModel get audio;
  @override
  @JsonKey(name: "tafsir")
  TafsirAyahModel get tafsir;
  @override
  @JsonKey(name: "surah")
  SurahAyahModel get surah;
  @override
  @JsonKey(ignore: true)
  _$$AyahModelImplCopyWith<_$AyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioAyahModel _$AudioAyahModelFromJson(Map<String, dynamic> json) {
  return _AudioAyahModel.fromJson(json);
}

/// @nodoc
mixin _$AudioAyahModel {
  @JsonKey(name: "primary")
  String get primary => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary")
  List<String> get secondary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioAyahModelCopyWith<AudioAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioAyahModelCopyWith<$Res> {
  factory $AudioAyahModelCopyWith(
          AudioAyahModel value, $Res Function(AudioAyahModel) then) =
      _$AudioAyahModelCopyWithImpl<$Res, AudioAyahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "primary") String primary,
      @JsonKey(name: "secondary") List<String> secondary});
}

/// @nodoc
class _$AudioAyahModelCopyWithImpl<$Res, $Val extends AudioAyahModel>
    implements $AudioAyahModelCopyWith<$Res> {
  _$AudioAyahModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AudioAyahModelImplCopyWith<$Res>
    implements $AudioAyahModelCopyWith<$Res> {
  factory _$$AudioAyahModelImplCopyWith(_$AudioAyahModelImpl value,
          $Res Function(_$AudioAyahModelImpl) then) =
      __$$AudioAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "primary") String primary,
      @JsonKey(name: "secondary") List<String> secondary});
}

/// @nodoc
class __$$AudioAyahModelImplCopyWithImpl<$Res>
    extends _$AudioAyahModelCopyWithImpl<$Res, _$AudioAyahModelImpl>
    implements _$$AudioAyahModelImplCopyWith<$Res> {
  __$$AudioAyahModelImplCopyWithImpl(
      _$AudioAyahModelImpl _value, $Res Function(_$AudioAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? secondary = null,
  }) {
    return _then(_$AudioAyahModelImpl(
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
@JsonSerializable()
class _$AudioAyahModelImpl implements _AudioAyahModel {
  const _$AudioAyahModelImpl(
      {@JsonKey(name: "primary") required this.primary,
      @JsonKey(name: "secondary") required final List<String> secondary})
      : _secondary = secondary;

  factory _$AudioAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "primary")
  final String primary;
  final List<String> _secondary;
  @override
  @JsonKey(name: "secondary")
  List<String> get secondary {
    if (_secondary is EqualUnmodifiableListView) return _secondary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_secondary);
  }

  @override
  String toString() {
    return 'AudioAyahModel(primary: $primary, secondary: $secondary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioAyahModelImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            const DeepCollectionEquality()
                .equals(other._secondary, _secondary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, primary, const DeepCollectionEquality().hash(_secondary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioAyahModelImplCopyWith<_$AudioAyahModelImpl> get copyWith =>
      __$$AudioAyahModelImplCopyWithImpl<_$AudioAyahModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioAyahModelImplToJson(
      this,
    );
  }
}

abstract class _AudioAyahModel implements AudioAyahModel {
  const factory _AudioAyahModel(
          {@JsonKey(name: "primary") required final String primary,
          @JsonKey(name: "secondary") required final List<String> secondary}) =
      _$AudioAyahModelImpl;

  factory _AudioAyahModel.fromJson(Map<String, dynamic> json) =
      _$AudioAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "primary")
  String get primary;
  @override
  @JsonKey(name: "secondary")
  List<String> get secondary;
  @override
  @JsonKey(ignore: true)
  _$$AudioAyahModelImplCopyWith<_$AudioAyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaAyahModel _$MetaAyahModelFromJson(Map<String, dynamic> json) {
  return _MetaAyahModel.fromJson(json);
}

/// @nodoc
mixin _$MetaAyahModel {
  @JsonKey(name: "juz")
  int get juz => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "manzil")
  int get manzil => throw _privateConstructorUsedError;
  @JsonKey(name: "ruku")
  int get ruku => throw _privateConstructorUsedError;
  @JsonKey(name: "hizbQuarter")
  int get hizbQuarter => throw _privateConstructorUsedError;
  @JsonKey(name: "sajda")
  SajdaAyahModel get sajda => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaAyahModelCopyWith<MetaAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaAyahModelCopyWith<$Res> {
  factory $MetaAyahModelCopyWith(
          MetaAyahModel value, $Res Function(MetaAyahModel) then) =
      _$MetaAyahModelCopyWithImpl<$Res, MetaAyahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "juz") int juz,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "manzil") int manzil,
      @JsonKey(name: "ruku") int ruku,
      @JsonKey(name: "hizbQuarter") int hizbQuarter,
      @JsonKey(name: "sajda") SajdaAyahModel sajda});

  $SajdaAyahModelCopyWith<$Res> get sajda;
}

/// @nodoc
class _$MetaAyahModelCopyWithImpl<$Res, $Val extends MetaAyahModel>
    implements $MetaAyahModelCopyWith<$Res> {
  _$MetaAyahModelCopyWithImpl(this._value, this._then);

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
              as SajdaAyahModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SajdaAyahModelCopyWith<$Res> get sajda {
    return $SajdaAyahModelCopyWith<$Res>(_value.sajda, (value) {
      return _then(_value.copyWith(sajda: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaAyahModelImplCopyWith<$Res>
    implements $MetaAyahModelCopyWith<$Res> {
  factory _$$MetaAyahModelImplCopyWith(
          _$MetaAyahModelImpl value, $Res Function(_$MetaAyahModelImpl) then) =
      __$$MetaAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "juz") int juz,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "manzil") int manzil,
      @JsonKey(name: "ruku") int ruku,
      @JsonKey(name: "hizbQuarter") int hizbQuarter,
      @JsonKey(name: "sajda") SajdaAyahModel sajda});

  @override
  $SajdaAyahModelCopyWith<$Res> get sajda;
}

/// @nodoc
class __$$MetaAyahModelImplCopyWithImpl<$Res>
    extends _$MetaAyahModelCopyWithImpl<$Res, _$MetaAyahModelImpl>
    implements _$$MetaAyahModelImplCopyWith<$Res> {
  __$$MetaAyahModelImplCopyWithImpl(
      _$MetaAyahModelImpl _value, $Res Function(_$MetaAyahModelImpl) _then)
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
    return _then(_$MetaAyahModelImpl(
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
              as SajdaAyahModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MetaAyahModelImpl implements _MetaAyahModel {
  const _$MetaAyahModelImpl(
      {@JsonKey(name: "juz") required this.juz,
      @JsonKey(name: "page") required this.page,
      @JsonKey(name: "manzil") required this.manzil,
      @JsonKey(name: "ruku") required this.ruku,
      @JsonKey(name: "hizbQuarter") required this.hizbQuarter,
      @JsonKey(name: "sajda") required this.sajda});

  factory _$MetaAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "juz")
  final int juz;
  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "manzil")
  final int manzil;
  @override
  @JsonKey(name: "ruku")
  final int ruku;
  @override
  @JsonKey(name: "hizbQuarter")
  final int hizbQuarter;
  @override
  @JsonKey(name: "sajda")
  final SajdaAyahModel sajda;

  @override
  String toString() {
    return 'MetaAyahModel(juz: $juz, page: $page, manzil: $manzil, ruku: $ruku, hizbQuarter: $hizbQuarter, sajda: $sajda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaAyahModelImpl &&
            (identical(other.juz, juz) || other.juz == juz) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.manzil, manzil) || other.manzil == manzil) &&
            (identical(other.ruku, ruku) || other.ruku == ruku) &&
            (identical(other.hizbQuarter, hizbQuarter) ||
                other.hizbQuarter == hizbQuarter) &&
            (identical(other.sajda, sajda) || other.sajda == sajda));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, juz, page, manzil, ruku, hizbQuarter, sajda);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaAyahModelImplCopyWith<_$MetaAyahModelImpl> get copyWith =>
      __$$MetaAyahModelImplCopyWithImpl<_$MetaAyahModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaAyahModelImplToJson(
      this,
    );
  }
}

abstract class _MetaAyahModel implements MetaAyahModel {
  const factory _MetaAyahModel(
          {@JsonKey(name: "juz") required final int juz,
          @JsonKey(name: "page") required final int page,
          @JsonKey(name: "manzil") required final int manzil,
          @JsonKey(name: "ruku") required final int ruku,
          @JsonKey(name: "hizbQuarter") required final int hizbQuarter,
          @JsonKey(name: "sajda") required final SajdaAyahModel sajda}) =
      _$MetaAyahModelImpl;

  factory _MetaAyahModel.fromJson(Map<String, dynamic> json) =
      _$MetaAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "juz")
  int get juz;
  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "manzil")
  int get manzil;
  @override
  @JsonKey(name: "ruku")
  int get ruku;
  @override
  @JsonKey(name: "hizbQuarter")
  int get hizbQuarter;
  @override
  @JsonKey(name: "sajda")
  SajdaAyahModel get sajda;
  @override
  @JsonKey(ignore: true)
  _$$MetaAyahModelImplCopyWith<_$MetaAyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SajdaAyahModel _$SajdaAyahModelFromJson(Map<String, dynamic> json) {
  return _SajdaAyahModel.fromJson(json);
}

/// @nodoc
mixin _$SajdaAyahModel {
  @JsonKey(name: "recommended")
  bool get recommended => throw _privateConstructorUsedError;
  @JsonKey(name: "obligatory")
  bool get obligatory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SajdaAyahModelCopyWith<SajdaAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SajdaAyahModelCopyWith<$Res> {
  factory $SajdaAyahModelCopyWith(
          SajdaAyahModel value, $Res Function(SajdaAyahModel) then) =
      _$SajdaAyahModelCopyWithImpl<$Res, SajdaAyahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "recommended") bool recommended,
      @JsonKey(name: "obligatory") bool obligatory});
}

/// @nodoc
class _$SajdaAyahModelCopyWithImpl<$Res, $Val extends SajdaAyahModel>
    implements $SajdaAyahModelCopyWith<$Res> {
  _$SajdaAyahModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SajdaAyahModelImplCopyWith<$Res>
    implements $SajdaAyahModelCopyWith<$Res> {
  factory _$$SajdaAyahModelImplCopyWith(_$SajdaAyahModelImpl value,
          $Res Function(_$SajdaAyahModelImpl) then) =
      __$$SajdaAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "recommended") bool recommended,
      @JsonKey(name: "obligatory") bool obligatory});
}

/// @nodoc
class __$$SajdaAyahModelImplCopyWithImpl<$Res>
    extends _$SajdaAyahModelCopyWithImpl<$Res, _$SajdaAyahModelImpl>
    implements _$$SajdaAyahModelImplCopyWith<$Res> {
  __$$SajdaAyahModelImplCopyWithImpl(
      _$SajdaAyahModelImpl _value, $Res Function(_$SajdaAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommended = null,
    Object? obligatory = null,
  }) {
    return _then(_$SajdaAyahModelImpl(
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
@JsonSerializable()
class _$SajdaAyahModelImpl implements _SajdaAyahModel {
  const _$SajdaAyahModelImpl(
      {@JsonKey(name: "recommended") required this.recommended,
      @JsonKey(name: "obligatory") required this.obligatory});

  factory _$SajdaAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SajdaAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "recommended")
  final bool recommended;
  @override
  @JsonKey(name: "obligatory")
  final bool obligatory;

  @override
  String toString() {
    return 'SajdaAyahModel(recommended: $recommended, obligatory: $obligatory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SajdaAyahModelImpl &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.obligatory, obligatory) ||
                other.obligatory == obligatory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recommended, obligatory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SajdaAyahModelImplCopyWith<_$SajdaAyahModelImpl> get copyWith =>
      __$$SajdaAyahModelImplCopyWithImpl<_$SajdaAyahModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SajdaAyahModelImplToJson(
      this,
    );
  }
}

abstract class _SajdaAyahModel implements SajdaAyahModel {
  const factory _SajdaAyahModel(
          {@JsonKey(name: "recommended") required final bool recommended,
          @JsonKey(name: "obligatory") required final bool obligatory}) =
      _$SajdaAyahModelImpl;

  factory _SajdaAyahModel.fromJson(Map<String, dynamic> json) =
      _$SajdaAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "recommended")
  bool get recommended;
  @override
  @JsonKey(name: "obligatory")
  bool get obligatory;
  @override
  @JsonKey(ignore: true)
  _$$SajdaAyahModelImplCopyWith<_$SajdaAyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NumberAyahModel _$NumberAyahModelFromJson(Map<String, dynamic> json) {
  return _NumberAyahModel.fromJson(json);
}

/// @nodoc
mixin _$NumberAyahModel {
  @JsonKey(name: "inQuran")
  int get inQuran => throw _privateConstructorUsedError;
  @JsonKey(name: "inSurah")
  int get inSurah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberAyahModelCopyWith<NumberAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberAyahModelCopyWith<$Res> {
  factory $NumberAyahModelCopyWith(
          NumberAyahModel value, $Res Function(NumberAyahModel) then) =
      _$NumberAyahModelCopyWithImpl<$Res, NumberAyahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "inQuran") int inQuran,
      @JsonKey(name: "inSurah") int inSurah});
}

/// @nodoc
class _$NumberAyahModelCopyWithImpl<$Res, $Val extends NumberAyahModel>
    implements $NumberAyahModelCopyWith<$Res> {
  _$NumberAyahModelCopyWithImpl(this._value, this._then);

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
abstract class _$$NumberAyahModelImplCopyWith<$Res>
    implements $NumberAyahModelCopyWith<$Res> {
  factory _$$NumberAyahModelImplCopyWith(_$NumberAyahModelImpl value,
          $Res Function(_$NumberAyahModelImpl) then) =
      __$$NumberAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "inQuran") int inQuran,
      @JsonKey(name: "inSurah") int inSurah});
}

/// @nodoc
class __$$NumberAyahModelImplCopyWithImpl<$Res>
    extends _$NumberAyahModelCopyWithImpl<$Res, _$NumberAyahModelImpl>
    implements _$$NumberAyahModelImplCopyWith<$Res> {
  __$$NumberAyahModelImplCopyWithImpl(
      _$NumberAyahModelImpl _value, $Res Function(_$NumberAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inQuran = null,
    Object? inSurah = null,
  }) {
    return _then(_$NumberAyahModelImpl(
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
@JsonSerializable()
class _$NumberAyahModelImpl implements _NumberAyahModel {
  const _$NumberAyahModelImpl(
      {@JsonKey(name: "inQuran") required this.inQuran,
      @JsonKey(name: "inSurah") required this.inSurah});

  factory _$NumberAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumberAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "inQuran")
  final int inQuran;
  @override
  @JsonKey(name: "inSurah")
  final int inSurah;

  @override
  String toString() {
    return 'NumberAyahModel(inQuran: $inQuran, inSurah: $inSurah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberAyahModelImpl &&
            (identical(other.inQuran, inQuran) || other.inQuran == inQuran) &&
            (identical(other.inSurah, inSurah) || other.inSurah == inSurah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, inQuran, inSurah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberAyahModelImplCopyWith<_$NumberAyahModelImpl> get copyWith =>
      __$$NumberAyahModelImplCopyWithImpl<_$NumberAyahModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NumberAyahModelImplToJson(
      this,
    );
  }
}

abstract class _NumberAyahModel implements NumberAyahModel {
  const factory _NumberAyahModel(
          {@JsonKey(name: "inQuran") required final int inQuran,
          @JsonKey(name: "inSurah") required final int inSurah}) =
      _$NumberAyahModelImpl;

  factory _NumberAyahModel.fromJson(Map<String, dynamic> json) =
      _$NumberAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "inQuran")
  int get inQuran;
  @override
  @JsonKey(name: "inSurah")
  int get inSurah;
  @override
  @JsonKey(ignore: true)
  _$$NumberAyahModelImplCopyWith<_$NumberAyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurahAyahModel _$SurahAyahModelFromJson(Map<String, dynamic> json) {
  return _SurahAyahModel.fromJson(json);
}

/// @nodoc
mixin _$SurahAyahModel {
  @JsonKey(name: "number")
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: "sequence")
  int get sequence => throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfVerses")
  int get numberOfVerses => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  NameAyahModel get name => throw _privateConstructorUsedError;
  @JsonKey(name: "revelation")
  RevelationAyahModel get revelation => throw _privateConstructorUsedError;
  @JsonKey(name: "tafsir")
  SurahTafsirAyahModel get tafsir => throw _privateConstructorUsedError;
  @JsonKey(name: "preBismillah")
  PreBismillahAyahModel get preBismillah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahAyahModelCopyWith<SurahAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahAyahModelCopyWith<$Res> {
  factory $SurahAyahModelCopyWith(
          SurahAyahModel value, $Res Function(SurahAyahModel) then) =
      _$SurahAyahModelCopyWithImpl<$Res, SurahAyahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "number") int number,
      @JsonKey(name: "sequence") int sequence,
      @JsonKey(name: "numberOfVerses") int numberOfVerses,
      @JsonKey(name: "name") NameAyahModel name,
      @JsonKey(name: "revelation") RevelationAyahModel revelation,
      @JsonKey(name: "tafsir") SurahTafsirAyahModel tafsir,
      @JsonKey(name: "preBismillah") PreBismillahAyahModel preBismillah});

  $NameAyahModelCopyWith<$Res> get name;
  $RevelationAyahModelCopyWith<$Res> get revelation;
  $SurahTafsirAyahModelCopyWith<$Res> get tafsir;
  $PreBismillahAyahModelCopyWith<$Res> get preBismillah;
}

/// @nodoc
class _$SurahAyahModelCopyWithImpl<$Res, $Val extends SurahAyahModel>
    implements $SurahAyahModelCopyWith<$Res> {
  _$SurahAyahModelCopyWithImpl(this._value, this._then);

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
              as NameAyahModel,
      revelation: null == revelation
          ? _value.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as RevelationAyahModel,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as SurahTafsirAyahModel,
      preBismillah: null == preBismillah
          ? _value.preBismillah
          : preBismillah // ignore: cast_nullable_to_non_nullable
              as PreBismillahAyahModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameAyahModelCopyWith<$Res> get name {
    return $NameAyahModelCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RevelationAyahModelCopyWith<$Res> get revelation {
    return $RevelationAyahModelCopyWith<$Res>(_value.revelation, (value) {
      return _then(_value.copyWith(revelation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahTafsirAyahModelCopyWith<$Res> get tafsir {
    return $SurahTafsirAyahModelCopyWith<$Res>(_value.tafsir, (value) {
      return _then(_value.copyWith(tafsir: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PreBismillahAyahModelCopyWith<$Res> get preBismillah {
    return $PreBismillahAyahModelCopyWith<$Res>(_value.preBismillah, (value) {
      return _then(_value.copyWith(preBismillah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurahAyahModelImplCopyWith<$Res>
    implements $SurahAyahModelCopyWith<$Res> {
  factory _$$SurahAyahModelImplCopyWith(_$SurahAyahModelImpl value,
          $Res Function(_$SurahAyahModelImpl) then) =
      __$$SurahAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "number") int number,
      @JsonKey(name: "sequence") int sequence,
      @JsonKey(name: "numberOfVerses") int numberOfVerses,
      @JsonKey(name: "name") NameAyahModel name,
      @JsonKey(name: "revelation") RevelationAyahModel revelation,
      @JsonKey(name: "tafsir") SurahTafsirAyahModel tafsir,
      @JsonKey(name: "preBismillah") PreBismillahAyahModel preBismillah});

  @override
  $NameAyahModelCopyWith<$Res> get name;
  @override
  $RevelationAyahModelCopyWith<$Res> get revelation;
  @override
  $SurahTafsirAyahModelCopyWith<$Res> get tafsir;
  @override
  $PreBismillahAyahModelCopyWith<$Res> get preBismillah;
}

/// @nodoc
class __$$SurahAyahModelImplCopyWithImpl<$Res>
    extends _$SurahAyahModelCopyWithImpl<$Res, _$SurahAyahModelImpl>
    implements _$$SurahAyahModelImplCopyWith<$Res> {
  __$$SurahAyahModelImplCopyWithImpl(
      _$SurahAyahModelImpl _value, $Res Function(_$SurahAyahModelImpl) _then)
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
    return _then(_$SurahAyahModelImpl(
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
              as NameAyahModel,
      revelation: null == revelation
          ? _value.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as RevelationAyahModel,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as SurahTafsirAyahModel,
      preBismillah: null == preBismillah
          ? _value.preBismillah
          : preBismillah // ignore: cast_nullable_to_non_nullable
              as PreBismillahAyahModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SurahAyahModelImpl implements _SurahAyahModel {
  const _$SurahAyahModelImpl(
      {@JsonKey(name: "number") required this.number,
      @JsonKey(name: "sequence") required this.sequence,
      @JsonKey(name: "numberOfVerses") required this.numberOfVerses,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "revelation") required this.revelation,
      @JsonKey(name: "tafsir") required this.tafsir,
      @JsonKey(name: "preBismillah") required this.preBismillah});

  factory _$SurahAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "number")
  final int number;
  @override
  @JsonKey(name: "sequence")
  final int sequence;
  @override
  @JsonKey(name: "numberOfVerses")
  final int numberOfVerses;
  @override
  @JsonKey(name: "name")
  final NameAyahModel name;
  @override
  @JsonKey(name: "revelation")
  final RevelationAyahModel revelation;
  @override
  @JsonKey(name: "tafsir")
  final SurahTafsirAyahModel tafsir;
  @override
  @JsonKey(name: "preBismillah")
  final PreBismillahAyahModel preBismillah;

  @override
  String toString() {
    return 'SurahAyahModel(number: $number, sequence: $sequence, numberOfVerses: $numberOfVerses, name: $name, revelation: $revelation, tafsir: $tafsir, preBismillah: $preBismillah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahAyahModelImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, sequence, numberOfVerses,
      name, revelation, tafsir, preBismillah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahAyahModelImplCopyWith<_$SurahAyahModelImpl> get copyWith =>
      __$$SurahAyahModelImplCopyWithImpl<_$SurahAyahModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahAyahModelImplToJson(
      this,
    );
  }
}

abstract class _SurahAyahModel implements SurahAyahModel {
  const factory _SurahAyahModel(
          {@JsonKey(name: "number") required final int number,
          @JsonKey(name: "sequence") required final int sequence,
          @JsonKey(name: "numberOfVerses") required final int numberOfVerses,
          @JsonKey(name: "name") required final NameAyahModel name,
          @JsonKey(name: "revelation")
          required final RevelationAyahModel revelation,
          @JsonKey(name: "tafsir") required final SurahTafsirAyahModel tafsir,
          @JsonKey(name: "preBismillah")
          required final PreBismillahAyahModel preBismillah}) =
      _$SurahAyahModelImpl;

  factory _SurahAyahModel.fromJson(Map<String, dynamic> json) =
      _$SurahAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "number")
  int get number;
  @override
  @JsonKey(name: "sequence")
  int get sequence;
  @override
  @JsonKey(name: "numberOfVerses")
  int get numberOfVerses;
  @override
  @JsonKey(name: "name")
  NameAyahModel get name;
  @override
  @JsonKey(name: "revelation")
  RevelationAyahModel get revelation;
  @override
  @JsonKey(name: "tafsir")
  SurahTafsirAyahModel get tafsir;
  @override
  @JsonKey(name: "preBismillah")
  PreBismillahAyahModel get preBismillah;
  @override
  @JsonKey(ignore: true)
  _$$SurahAyahModelImplCopyWith<_$SurahAyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NameAyahModel _$NameAyahModelFromJson(Map<String, dynamic> json) {
  return _NameAyahModel.fromJson(json);
}

/// @nodoc
mixin _$NameAyahModel {
  @JsonKey(name: "short")
  String get short => throw _privateConstructorUsedError;
  @JsonKey(name: "long")
  String get long => throw _privateConstructorUsedError;
  @JsonKey(name: "transliteration")
  TranslationAyahModel get transliteration =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "translation")
  TranslationAyahModel get translation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameAyahModelCopyWith<NameAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameAyahModelCopyWith<$Res> {
  factory $NameAyahModelCopyWith(
          NameAyahModel value, $Res Function(NameAyahModel) then) =
      _$NameAyahModelCopyWithImpl<$Res, NameAyahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "short") String short,
      @JsonKey(name: "long") String long,
      @JsonKey(name: "transliteration") TranslationAyahModel transliteration,
      @JsonKey(name: "translation") TranslationAyahModel translation});

  $TranslationAyahModelCopyWith<$Res> get transliteration;
  $TranslationAyahModelCopyWith<$Res> get translation;
}

/// @nodoc
class _$NameAyahModelCopyWithImpl<$Res, $Val extends NameAyahModel>
    implements $NameAyahModelCopyWith<$Res> {
  _$NameAyahModelCopyWithImpl(this._value, this._then);

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
              as TranslationAyahModel,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyahModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationAyahModelCopyWith<$Res> get transliteration {
    return $TranslationAyahModelCopyWith<$Res>(_value.transliteration, (value) {
      return _then(_value.copyWith(transliteration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationAyahModelCopyWith<$Res> get translation {
    return $TranslationAyahModelCopyWith<$Res>(_value.translation, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NameAyahModelImplCopyWith<$Res>
    implements $NameAyahModelCopyWith<$Res> {
  factory _$$NameAyahModelImplCopyWith(
          _$NameAyahModelImpl value, $Res Function(_$NameAyahModelImpl) then) =
      __$$NameAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "short") String short,
      @JsonKey(name: "long") String long,
      @JsonKey(name: "transliteration") TranslationAyahModel transliteration,
      @JsonKey(name: "translation") TranslationAyahModel translation});

  @override
  $TranslationAyahModelCopyWith<$Res> get transliteration;
  @override
  $TranslationAyahModelCopyWith<$Res> get translation;
}

/// @nodoc
class __$$NameAyahModelImplCopyWithImpl<$Res>
    extends _$NameAyahModelCopyWithImpl<$Res, _$NameAyahModelImpl>
    implements _$$NameAyahModelImplCopyWith<$Res> {
  __$$NameAyahModelImplCopyWithImpl(
      _$NameAyahModelImpl _value, $Res Function(_$NameAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? long = null,
    Object? transliteration = null,
    Object? translation = null,
  }) {
    return _then(_$NameAyahModelImpl(
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
              as TranslationAyahModel,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyahModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NameAyahModelImpl implements _NameAyahModel {
  const _$NameAyahModelImpl(
      {@JsonKey(name: "short") required this.short,
      @JsonKey(name: "long") required this.long,
      @JsonKey(name: "transliteration") required this.transliteration,
      @JsonKey(name: "translation") required this.translation});

  factory _$NameAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "short")
  final String short;
  @override
  @JsonKey(name: "long")
  final String long;
  @override
  @JsonKey(name: "transliteration")
  final TranslationAyahModel transliteration;
  @override
  @JsonKey(name: "translation")
  final TranslationAyahModel translation;

  @override
  String toString() {
    return 'NameAyahModel(short: $short, long: $long, transliteration: $transliteration, translation: $translation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameAyahModelImpl &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration) &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, short, long, transliteration, translation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameAyahModelImplCopyWith<_$NameAyahModelImpl> get copyWith =>
      __$$NameAyahModelImplCopyWithImpl<_$NameAyahModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameAyahModelImplToJson(
      this,
    );
  }
}

abstract class _NameAyahModel implements NameAyahModel {
  const factory _NameAyahModel(
      {@JsonKey(name: "short") required final String short,
      @JsonKey(name: "long") required final String long,
      @JsonKey(name: "transliteration")
      required final TranslationAyahModel transliteration,
      @JsonKey(name: "translation")
      required final TranslationAyahModel translation}) = _$NameAyahModelImpl;

  factory _NameAyahModel.fromJson(Map<String, dynamic> json) =
      _$NameAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "short")
  String get short;
  @override
  @JsonKey(name: "long")
  String get long;
  @override
  @JsonKey(name: "transliteration")
  TranslationAyahModel get transliteration;
  @override
  @JsonKey(name: "translation")
  TranslationAyahModel get translation;
  @override
  @JsonKey(ignore: true)
  _$$NameAyahModelImplCopyWith<_$NameAyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TranslationAyahModel _$TranslationAyahModelFromJson(Map<String, dynamic> json) {
  return _TranslationAyahModel.fromJson(json);
}

/// @nodoc
mixin _$TranslationAyahModel {
  @JsonKey(name: "en")
  String get en => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationAyahModelCopyWith<TranslationAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationAyahModelCopyWith<$Res> {
  factory $TranslationAyahModelCopyWith(TranslationAyahModel value,
          $Res Function(TranslationAyahModel) then) =
      _$TranslationAyahModelCopyWithImpl<$Res, TranslationAyahModel>;
  @useResult
  $Res call({@JsonKey(name: "en") String en, @JsonKey(name: "id") String id});
}

/// @nodoc
class _$TranslationAyahModelCopyWithImpl<$Res,
        $Val extends TranslationAyahModel>
    implements $TranslationAyahModelCopyWith<$Res> {
  _$TranslationAyahModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TranslationAyahModelImplCopyWith<$Res>
    implements $TranslationAyahModelCopyWith<$Res> {
  factory _$$TranslationAyahModelImplCopyWith(_$TranslationAyahModelImpl value,
          $Res Function(_$TranslationAyahModelImpl) then) =
      __$$TranslationAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "en") String en, @JsonKey(name: "id") String id});
}

/// @nodoc
class __$$TranslationAyahModelImplCopyWithImpl<$Res>
    extends _$TranslationAyahModelCopyWithImpl<$Res, _$TranslationAyahModelImpl>
    implements _$$TranslationAyahModelImplCopyWith<$Res> {
  __$$TranslationAyahModelImplCopyWithImpl(_$TranslationAyahModelImpl _value,
      $Res Function(_$TranslationAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_$TranslationAyahModelImpl(
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
@JsonSerializable()
class _$TranslationAyahModelImpl implements _TranslationAyahModel {
  const _$TranslationAyahModelImpl(
      {@JsonKey(name: "en") required this.en,
      @JsonKey(name: "id") required this.id});

  factory _$TranslationAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "en")
  final String en;
  @override
  @JsonKey(name: "id")
  final String id;

  @override
  String toString() {
    return 'TranslationAyahModel(en: $en, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationAyahModelImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationAyahModelImplCopyWith<_$TranslationAyahModelImpl>
      get copyWith =>
          __$$TranslationAyahModelImplCopyWithImpl<_$TranslationAyahModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationAyahModelImplToJson(
      this,
    );
  }
}

abstract class _TranslationAyahModel implements TranslationAyahModel {
  const factory _TranslationAyahModel(
          {@JsonKey(name: "en") required final String en,
          @JsonKey(name: "id") required final String id}) =
      _$TranslationAyahModelImpl;

  factory _TranslationAyahModel.fromJson(Map<String, dynamic> json) =
      _$TranslationAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "en")
  String get en;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$TranslationAyahModelImplCopyWith<_$TranslationAyahModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PreBismillahAyahModel _$PreBismillahAyahModelFromJson(
    Map<String, dynamic> json) {
  return _PreBismillahAyahModel.fromJson(json);
}

/// @nodoc
mixin _$PreBismillahAyahModel {
  @JsonKey(name: "text")
  TextsAyahModel get text => throw _privateConstructorUsedError;
  @JsonKey(name: "translation")
  TranslationAyahModel get translation => throw _privateConstructorUsedError;
  @JsonKey(name: "audio")
  AudioAyahModel get audio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreBismillahAyahModelCopyWith<PreBismillahAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreBismillahAyahModelCopyWith<$Res> {
  factory $PreBismillahAyahModelCopyWith(PreBismillahAyahModel value,
          $Res Function(PreBismillahAyahModel) then) =
      _$PreBismillahAyahModelCopyWithImpl<$Res, PreBismillahAyahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "text") TextsAyahModel text,
      @JsonKey(name: "translation") TranslationAyahModel translation,
      @JsonKey(name: "audio") AudioAyahModel audio});

  $TextsAyahModelCopyWith<$Res> get text;
  $TranslationAyahModelCopyWith<$Res> get translation;
  $AudioAyahModelCopyWith<$Res> get audio;
}

/// @nodoc
class _$PreBismillahAyahModelCopyWithImpl<$Res,
        $Val extends PreBismillahAyahModel>
    implements $PreBismillahAyahModelCopyWith<$Res> {
  _$PreBismillahAyahModelCopyWithImpl(this._value, this._then);

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
              as TextsAyahModel,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyahModel,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioAyahModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextsAyahModelCopyWith<$Res> get text {
    return $TextsAyahModelCopyWith<$Res>(_value.text, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationAyahModelCopyWith<$Res> get translation {
    return $TranslationAyahModelCopyWith<$Res>(_value.translation, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioAyahModelCopyWith<$Res> get audio {
    return $AudioAyahModelCopyWith<$Res>(_value.audio, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreBismillahAyahModelImplCopyWith<$Res>
    implements $PreBismillahAyahModelCopyWith<$Res> {
  factory _$$PreBismillahAyahModelImplCopyWith(
          _$PreBismillahAyahModelImpl value,
          $Res Function(_$PreBismillahAyahModelImpl) then) =
      __$$PreBismillahAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "text") TextsAyahModel text,
      @JsonKey(name: "translation") TranslationAyahModel translation,
      @JsonKey(name: "audio") AudioAyahModel audio});

  @override
  $TextsAyahModelCopyWith<$Res> get text;
  @override
  $TranslationAyahModelCopyWith<$Res> get translation;
  @override
  $AudioAyahModelCopyWith<$Res> get audio;
}

/// @nodoc
class __$$PreBismillahAyahModelImplCopyWithImpl<$Res>
    extends _$PreBismillahAyahModelCopyWithImpl<$Res,
        _$PreBismillahAyahModelImpl>
    implements _$$PreBismillahAyahModelImplCopyWith<$Res> {
  __$$PreBismillahAyahModelImplCopyWithImpl(_$PreBismillahAyahModelImpl _value,
      $Res Function(_$PreBismillahAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? translation = null,
    Object? audio = null,
  }) {
    return _then(_$PreBismillahAyahModelImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextsAyahModel,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationAyahModel,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioAyahModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PreBismillahAyahModelImpl implements _PreBismillahAyahModel {
  const _$PreBismillahAyahModelImpl(
      {@JsonKey(name: "text") required this.text,
      @JsonKey(name: "translation") required this.translation,
      @JsonKey(name: "audio") required this.audio});

  factory _$PreBismillahAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreBismillahAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "text")
  final TextsAyahModel text;
  @override
  @JsonKey(name: "translation")
  final TranslationAyahModel translation;
  @override
  @JsonKey(name: "audio")
  final AudioAyahModel audio;

  @override
  String toString() {
    return 'PreBismillahAyahModel(text: $text, translation: $translation, audio: $audio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreBismillahAyahModelImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.audio, audio) || other.audio == audio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, translation, audio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreBismillahAyahModelImplCopyWith<_$PreBismillahAyahModelImpl>
      get copyWith => __$$PreBismillahAyahModelImplCopyWithImpl<
          _$PreBismillahAyahModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreBismillahAyahModelImplToJson(
      this,
    );
  }
}

abstract class _PreBismillahAyahModel implements PreBismillahAyahModel {
  const factory _PreBismillahAyahModel(
          {@JsonKey(name: "text") required final TextsAyahModel text,
          @JsonKey(name: "translation")
          required final TranslationAyahModel translation,
          @JsonKey(name: "audio") required final AudioAyahModel audio}) =
      _$PreBismillahAyahModelImpl;

  factory _PreBismillahAyahModel.fromJson(Map<String, dynamic> json) =
      _$PreBismillahAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "text")
  TextsAyahModel get text;
  @override
  @JsonKey(name: "translation")
  TranslationAyahModel get translation;
  @override
  @JsonKey(name: "audio")
  AudioAyahModel get audio;
  @override
  @JsonKey(ignore: true)
  _$$PreBismillahAyahModelImplCopyWith<_$PreBismillahAyahModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TextsAyahModel _$TextsAyahModelFromJson(Map<String, dynamic> json) {
  return _TextsAyahModel.fromJson(json);
}

/// @nodoc
mixin _$TextsAyahModel {
  @JsonKey(name: "arab")
  String get arab => throw _privateConstructorUsedError;
  @JsonKey(name: "transliteration")
  TransliterationAyahModel get transliteration =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextsAyahModelCopyWith<TextsAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextsAyahModelCopyWith<$Res> {
  factory $TextsAyahModelCopyWith(
          TextsAyahModel value, $Res Function(TextsAyahModel) then) =
      _$TextsAyahModelCopyWithImpl<$Res, TextsAyahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "arab") String arab,
      @JsonKey(name: "transliteration")
      TransliterationAyahModel transliteration});

  $TransliterationAyahModelCopyWith<$Res> get transliteration;
}

/// @nodoc
class _$TextsAyahModelCopyWithImpl<$Res, $Val extends TextsAyahModel>
    implements $TextsAyahModelCopyWith<$Res> {
  _$TextsAyahModelCopyWithImpl(this._value, this._then);

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
              as TransliterationAyahModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransliterationAyahModelCopyWith<$Res> get transliteration {
    return $TransliterationAyahModelCopyWith<$Res>(_value.transliteration,
        (value) {
      return _then(_value.copyWith(transliteration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextsAyahModelImplCopyWith<$Res>
    implements $TextsAyahModelCopyWith<$Res> {
  factory _$$TextsAyahModelImplCopyWith(_$TextsAyahModelImpl value,
          $Res Function(_$TextsAyahModelImpl) then) =
      __$$TextsAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "arab") String arab,
      @JsonKey(name: "transliteration")
      TransliterationAyahModel transliteration});

  @override
  $TransliterationAyahModelCopyWith<$Res> get transliteration;
}

/// @nodoc
class __$$TextsAyahModelImplCopyWithImpl<$Res>
    extends _$TextsAyahModelCopyWithImpl<$Res, _$TextsAyahModelImpl>
    implements _$$TextsAyahModelImplCopyWith<$Res> {
  __$$TextsAyahModelImplCopyWithImpl(
      _$TextsAyahModelImpl _value, $Res Function(_$TextsAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? transliteration = null,
  }) {
    return _then(_$TextsAyahModelImpl(
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as TransliterationAyahModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TextsAyahModelImpl implements _TextsAyahModel {
  const _$TextsAyahModelImpl(
      {@JsonKey(name: "arab") required this.arab,
      @JsonKey(name: "transliteration") required this.transliteration});

  factory _$TextsAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextsAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "arab")
  final String arab;
  @override
  @JsonKey(name: "transliteration")
  final TransliterationAyahModel transliteration;

  @override
  String toString() {
    return 'TextsAyahModel(arab: $arab, transliteration: $transliteration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextsAyahModelImpl &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, arab, transliteration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextsAyahModelImplCopyWith<_$TextsAyahModelImpl> get copyWith =>
      __$$TextsAyahModelImplCopyWithImpl<_$TextsAyahModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextsAyahModelImplToJson(
      this,
    );
  }
}

abstract class _TextsAyahModel implements TextsAyahModel {
  const factory _TextsAyahModel(
          {@JsonKey(name: "arab") required final String arab,
          @JsonKey(name: "transliteration")
          required final TransliterationAyahModel transliteration}) =
      _$TextsAyahModelImpl;

  factory _TextsAyahModel.fromJson(Map<String, dynamic> json) =
      _$TextsAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "arab")
  String get arab;
  @override
  @JsonKey(name: "transliteration")
  TransliterationAyahModel get transliteration;
  @override
  @JsonKey(ignore: true)
  _$$TextsAyahModelImplCopyWith<_$TextsAyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransliterationAyahModel _$TransliterationAyahModelFromJson(
    Map<String, dynamic> json) {
  return _TransliterationAyahModel.fromJson(json);
}

/// @nodoc
mixin _$TransliterationAyahModel {
  @JsonKey(name: "en")
  String get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransliterationAyahModelCopyWith<TransliterationAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransliterationAyahModelCopyWith<$Res> {
  factory $TransliterationAyahModelCopyWith(TransliterationAyahModel value,
          $Res Function(TransliterationAyahModel) then) =
      _$TransliterationAyahModelCopyWithImpl<$Res, TransliterationAyahModel>;
  @useResult
  $Res call({@JsonKey(name: "en") String en});
}

/// @nodoc
class _$TransliterationAyahModelCopyWithImpl<$Res,
        $Val extends TransliterationAyahModel>
    implements $TransliterationAyahModelCopyWith<$Res> {
  _$TransliterationAyahModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TransliterationAyahModelImplCopyWith<$Res>
    implements $TransliterationAyahModelCopyWith<$Res> {
  factory _$$TransliterationAyahModelImplCopyWith(
          _$TransliterationAyahModelImpl value,
          $Res Function(_$TransliterationAyahModelImpl) then) =
      __$$TransliterationAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "en") String en});
}

/// @nodoc
class __$$TransliterationAyahModelImplCopyWithImpl<$Res>
    extends _$TransliterationAyahModelCopyWithImpl<$Res,
        _$TransliterationAyahModelImpl>
    implements _$$TransliterationAyahModelImplCopyWith<$Res> {
  __$$TransliterationAyahModelImplCopyWithImpl(
      _$TransliterationAyahModelImpl _value,
      $Res Function(_$TransliterationAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
  }) {
    return _then(_$TransliterationAyahModelImpl(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransliterationAyahModelImpl implements _TransliterationAyahModel {
  const _$TransliterationAyahModelImpl({@JsonKey(name: "en") required this.en});

  factory _$TransliterationAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransliterationAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "en")
  final String en;

  @override
  String toString() {
    return 'TransliterationAyahModel(en: $en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransliterationAyahModelImpl &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransliterationAyahModelImplCopyWith<_$TransliterationAyahModelImpl>
      get copyWith => __$$TransliterationAyahModelImplCopyWithImpl<
          _$TransliterationAyahModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransliterationAyahModelImplToJson(
      this,
    );
  }
}

abstract class _TransliterationAyahModel implements TransliterationAyahModel {
  const factory _TransliterationAyahModel(
          {@JsonKey(name: "en") required final String en}) =
      _$TransliterationAyahModelImpl;

  factory _TransliterationAyahModel.fromJson(Map<String, dynamic> json) =
      _$TransliterationAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "en")
  String get en;
  @override
  @JsonKey(ignore: true)
  _$$TransliterationAyahModelImplCopyWith<_$TransliterationAyahModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RevelationAyahModel _$RevelationAyahModelFromJson(Map<String, dynamic> json) {
  return _RevelationAyahModel.fromJson(json);
}

/// @nodoc
mixin _$RevelationAyahModel {
  @JsonKey(name: "arab")
  String get arab => throw _privateConstructorUsedError;
  @JsonKey(name: "en")
  String get en => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RevelationAyahModelCopyWith<RevelationAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevelationAyahModelCopyWith<$Res> {
  factory $RevelationAyahModelCopyWith(
          RevelationAyahModel value, $Res Function(RevelationAyahModel) then) =
      _$RevelationAyahModelCopyWithImpl<$Res, RevelationAyahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "arab") String arab,
      @JsonKey(name: "en") String en,
      @JsonKey(name: "id") String id});
}

/// @nodoc
class _$RevelationAyahModelCopyWithImpl<$Res, $Val extends RevelationAyahModel>
    implements $RevelationAyahModelCopyWith<$Res> {
  _$RevelationAyahModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RevelationAyahModelImplCopyWith<$Res>
    implements $RevelationAyahModelCopyWith<$Res> {
  factory _$$RevelationAyahModelImplCopyWith(_$RevelationAyahModelImpl value,
          $Res Function(_$RevelationAyahModelImpl) then) =
      __$$RevelationAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "arab") String arab,
      @JsonKey(name: "en") String en,
      @JsonKey(name: "id") String id});
}

/// @nodoc
class __$$RevelationAyahModelImplCopyWithImpl<$Res>
    extends _$RevelationAyahModelCopyWithImpl<$Res, _$RevelationAyahModelImpl>
    implements _$$RevelationAyahModelImplCopyWith<$Res> {
  __$$RevelationAyahModelImplCopyWithImpl(_$RevelationAyahModelImpl _value,
      $Res Function(_$RevelationAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_$RevelationAyahModelImpl(
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
@JsonSerializable()
class _$RevelationAyahModelImpl implements _RevelationAyahModel {
  const _$RevelationAyahModelImpl(
      {@JsonKey(name: "arab") required this.arab,
      @JsonKey(name: "en") required this.en,
      @JsonKey(name: "id") required this.id});

  factory _$RevelationAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevelationAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "arab")
  final String arab;
  @override
  @JsonKey(name: "en")
  final String en;
  @override
  @JsonKey(name: "id")
  final String id;

  @override
  String toString() {
    return 'RevelationAyahModel(arab: $arab, en: $en, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevelationAyahModelImpl &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, arab, en, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RevelationAyahModelImplCopyWith<_$RevelationAyahModelImpl> get copyWith =>
      __$$RevelationAyahModelImplCopyWithImpl<_$RevelationAyahModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevelationAyahModelImplToJson(
      this,
    );
  }
}

abstract class _RevelationAyahModel implements RevelationAyahModel {
  const factory _RevelationAyahModel(
          {@JsonKey(name: "arab") required final String arab,
          @JsonKey(name: "en") required final String en,
          @JsonKey(name: "id") required final String id}) =
      _$RevelationAyahModelImpl;

  factory _RevelationAyahModel.fromJson(Map<String, dynamic> json) =
      _$RevelationAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "arab")
  String get arab;
  @override
  @JsonKey(name: "en")
  String get en;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$RevelationAyahModelImplCopyWith<_$RevelationAyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurahTafsirAyahModel _$SurahTafsirAyahModelFromJson(Map<String, dynamic> json) {
  return _SurahTafsirAyahModel.fromJson(json);
}

/// @nodoc
mixin _$SurahTafsirAyahModel {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahTafsirAyahModelCopyWith<SurahTafsirAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahTafsirAyahModelCopyWith<$Res> {
  factory $SurahTafsirAyahModelCopyWith(SurahTafsirAyahModel value,
          $Res Function(SurahTafsirAyahModel) then) =
      _$SurahTafsirAyahModelCopyWithImpl<$Res, SurahTafsirAyahModel>;
  @useResult
  $Res call({@JsonKey(name: "id") String id});
}

/// @nodoc
class _$SurahTafsirAyahModelCopyWithImpl<$Res,
        $Val extends SurahTafsirAyahModel>
    implements $SurahTafsirAyahModelCopyWith<$Res> {
  _$SurahTafsirAyahModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SurahTafsirAyahModelImplCopyWith<$Res>
    implements $SurahTafsirAyahModelCopyWith<$Res> {
  factory _$$SurahTafsirAyahModelImplCopyWith(_$SurahTafsirAyahModelImpl value,
          $Res Function(_$SurahTafsirAyahModelImpl) then) =
      __$$SurahTafsirAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") String id});
}

/// @nodoc
class __$$SurahTafsirAyahModelImplCopyWithImpl<$Res>
    extends _$SurahTafsirAyahModelCopyWithImpl<$Res, _$SurahTafsirAyahModelImpl>
    implements _$$SurahTafsirAyahModelImplCopyWith<$Res> {
  __$$SurahTafsirAyahModelImplCopyWithImpl(_$SurahTafsirAyahModelImpl _value,
      $Res Function(_$SurahTafsirAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SurahTafsirAyahModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahTafsirAyahModelImpl implements _SurahTafsirAyahModel {
  const _$SurahTafsirAyahModelImpl({@JsonKey(name: "id") required this.id});

  factory _$SurahTafsirAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahTafsirAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;

  @override
  String toString() {
    return 'SurahTafsirAyahModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahTafsirAyahModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahTafsirAyahModelImplCopyWith<_$SurahTafsirAyahModelImpl>
      get copyWith =>
          __$$SurahTafsirAyahModelImplCopyWithImpl<_$SurahTafsirAyahModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahTafsirAyahModelImplToJson(
      this,
    );
  }
}

abstract class _SurahTafsirAyahModel implements SurahTafsirAyahModel {
  const factory _SurahTafsirAyahModel(
          {@JsonKey(name: "id") required final String id}) =
      _$SurahTafsirAyahModelImpl;

  factory _SurahTafsirAyahModel.fromJson(Map<String, dynamic> json) =
      _$SurahTafsirAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$SurahTafsirAyahModelImplCopyWith<_$SurahTafsirAyahModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TafsirAyahModel _$TafsirAyahModelFromJson(Map<String, dynamic> json) {
  return _TafsirAyahModel.fromJson(json);
}

/// @nodoc
mixin _$TafsirAyahModel {
  @JsonKey(name: "id")
  IdAyahModel get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TafsirAyahModelCopyWith<TafsirAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TafsirAyahModelCopyWith<$Res> {
  factory $TafsirAyahModelCopyWith(
          TafsirAyahModel value, $Res Function(TafsirAyahModel) then) =
      _$TafsirAyahModelCopyWithImpl<$Res, TafsirAyahModel>;
  @useResult
  $Res call({@JsonKey(name: "id") IdAyahModel id});

  $IdAyahModelCopyWith<$Res> get id;
}

/// @nodoc
class _$TafsirAyahModelCopyWithImpl<$Res, $Val extends TafsirAyahModel>
    implements $TafsirAyahModelCopyWith<$Res> {
  _$TafsirAyahModelCopyWithImpl(this._value, this._then);

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
              as IdAyahModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdAyahModelCopyWith<$Res> get id {
    return $IdAyahModelCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TafsirAyahModelImplCopyWith<$Res>
    implements $TafsirAyahModelCopyWith<$Res> {
  factory _$$TafsirAyahModelImplCopyWith(_$TafsirAyahModelImpl value,
          $Res Function(_$TafsirAyahModelImpl) then) =
      __$$TafsirAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") IdAyahModel id});

  @override
  $IdAyahModelCopyWith<$Res> get id;
}

/// @nodoc
class __$$TafsirAyahModelImplCopyWithImpl<$Res>
    extends _$TafsirAyahModelCopyWithImpl<$Res, _$TafsirAyahModelImpl>
    implements _$$TafsirAyahModelImplCopyWith<$Res> {
  __$$TafsirAyahModelImplCopyWithImpl(
      _$TafsirAyahModelImpl _value, $Res Function(_$TafsirAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$TafsirAyahModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdAyahModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TafsirAyahModelImpl implements _TafsirAyahModel {
  const _$TafsirAyahModelImpl({@JsonKey(name: "id") required this.id});

  factory _$TafsirAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TafsirAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final IdAyahModel id;

  @override
  String toString() {
    return 'TafsirAyahModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TafsirAyahModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TafsirAyahModelImplCopyWith<_$TafsirAyahModelImpl> get copyWith =>
      __$$TafsirAyahModelImplCopyWithImpl<_$TafsirAyahModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TafsirAyahModelImplToJson(
      this,
    );
  }
}

abstract class _TafsirAyahModel implements TafsirAyahModel {
  const factory _TafsirAyahModel(
          {@JsonKey(name: "id") required final IdAyahModel id}) =
      _$TafsirAyahModelImpl;

  factory _TafsirAyahModel.fromJson(Map<String, dynamic> json) =
      _$TafsirAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  IdAyahModel get id;
  @override
  @JsonKey(ignore: true)
  _$$TafsirAyahModelImplCopyWith<_$TafsirAyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdAyahModel _$IdAyahModelFromJson(Map<String, dynamic> json) {
  return _IdAyahModel.fromJson(json);
}

/// @nodoc
mixin _$IdAyahModel {
  @JsonKey(name: "short")
  String get short => throw _privateConstructorUsedError;
  @JsonKey(name: "long")
  String get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdAyahModelCopyWith<IdAyahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdAyahModelCopyWith<$Res> {
  factory $IdAyahModelCopyWith(
          IdAyahModel value, $Res Function(IdAyahModel) then) =
      _$IdAyahModelCopyWithImpl<$Res, IdAyahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "short") String short,
      @JsonKey(name: "long") String long});
}

/// @nodoc
class _$IdAyahModelCopyWithImpl<$Res, $Val extends IdAyahModel>
    implements $IdAyahModelCopyWith<$Res> {
  _$IdAyahModelCopyWithImpl(this._value, this._then);

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
abstract class _$$IdAyahModelImplCopyWith<$Res>
    implements $IdAyahModelCopyWith<$Res> {
  factory _$$IdAyahModelImplCopyWith(
          _$IdAyahModelImpl value, $Res Function(_$IdAyahModelImpl) then) =
      __$$IdAyahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "short") String short,
      @JsonKey(name: "long") String long});
}

/// @nodoc
class __$$IdAyahModelImplCopyWithImpl<$Res>
    extends _$IdAyahModelCopyWithImpl<$Res, _$IdAyahModelImpl>
    implements _$$IdAyahModelImplCopyWith<$Res> {
  __$$IdAyahModelImplCopyWithImpl(
      _$IdAyahModelImpl _value, $Res Function(_$IdAyahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? long = null,
  }) {
    return _then(_$IdAyahModelImpl(
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

@JsonSerializable(explicitToJson: true)
class _$IdAyahModelImpl implements _IdAyahModel {
  const _$IdAyahModelImpl(
      {@JsonKey(name: "short") required this.short,
      @JsonKey(name: "long") required this.long});

  factory _$IdAyahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdAyahModelImplFromJson(json);

  @override
  @JsonKey(name: "short")
  final String short;
  @override
  @JsonKey(name: "long")
  final String long;

  @override
  String toString() {
    return 'IdAyahModel(short: $short, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdAyahModelImpl &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, short, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdAyahModelImplCopyWith<_$IdAyahModelImpl> get copyWith =>
      __$$IdAyahModelImplCopyWithImpl<_$IdAyahModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdAyahModelImplToJson(
      this,
    );
  }
}

abstract class _IdAyahModel implements IdAyahModel {
  const factory _IdAyahModel(
      {@JsonKey(name: "short") required final String short,
      @JsonKey(name: "long") required final String long}) = _$IdAyahModelImpl;

  factory _IdAyahModel.fromJson(Map<String, dynamic> json) =
      _$IdAyahModelImpl.fromJson;

  @override
  @JsonKey(name: "short")
  String get short;
  @override
  @JsonKey(name: "long")
  String get long;
  @override
  @JsonKey(ignore: true)
  _$$IdAyahModelImplCopyWith<_$IdAyahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
