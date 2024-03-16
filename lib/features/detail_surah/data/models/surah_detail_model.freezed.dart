// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahDetailModel _$SurahDetailModelFromJson(Map<String, dynamic> json) {
  return _SurahDetailModel.fromJson(json);
}

/// @nodoc
mixin _$SurahDetailModel {
  @JsonKey(name: "number")
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "sequence")
  int? get sequence => throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfVerses")
  int? get numberOfVerses => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  NameModel? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "revelation")
  RevelationModel? get revelation => throw _privateConstructorUsedError;
  @JsonKey(name: "tafsir")
  TafsirModel? get tafsir => throw _privateConstructorUsedError;
  @JsonKey(name: "preBismillah")
  PreBismillahModel? get preBismillah => throw _privateConstructorUsedError;
  @JsonKey(name: "verses")
  List<VerseModel>? get verses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahDetailModelCopyWith<SurahDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahDetailModelCopyWith<$Res> {
  factory $SurahDetailModelCopyWith(
          SurahDetailModel value, $Res Function(SurahDetailModel) then) =
      _$SurahDetailModelCopyWithImpl<$Res, SurahDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "number") int? number,
      @JsonKey(name: "sequence") int? sequence,
      @JsonKey(name: "numberOfVerses") int? numberOfVerses,
      @JsonKey(name: "name") NameModel? name,
      @JsonKey(name: "revelation") RevelationModel? revelation,
      @JsonKey(name: "tafsir") TafsirModel? tafsir,
      @JsonKey(name: "preBismillah") PreBismillahModel? preBismillah,
      @JsonKey(name: "verses") List<VerseModel>? verses});

  $NameModelCopyWith<$Res>? get name;
  $RevelationModelCopyWith<$Res>? get revelation;
  $TafsirModelCopyWith<$Res>? get tafsir;
  $PreBismillahModelCopyWith<$Res>? get preBismillah;
}

/// @nodoc
class _$SurahDetailModelCopyWithImpl<$Res, $Val extends SurahDetailModel>
    implements $SurahDetailModelCopyWith<$Res> {
  _$SurahDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? sequence = freezed,
    Object? numberOfVerses = freezed,
    Object? name = freezed,
    Object? revelation = freezed,
    Object? tafsir = freezed,
    Object? preBismillah = freezed,
    Object? verses = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfVerses: freezed == numberOfVerses
          ? _value.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModel?,
      revelation: freezed == revelation
          ? _value.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as RevelationModel?,
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as TafsirModel?,
      preBismillah: freezed == preBismillah
          ? _value.preBismillah
          : preBismillah // ignore: cast_nullable_to_non_nullable
              as PreBismillahModel?,
      verses: freezed == verses
          ? _value.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameModelCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameModelCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RevelationModelCopyWith<$Res>? get revelation {
    if (_value.revelation == null) {
      return null;
    }

    return $RevelationModelCopyWith<$Res>(_value.revelation!, (value) {
      return _then(_value.copyWith(revelation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TafsirModelCopyWith<$Res>? get tafsir {
    if (_value.tafsir == null) {
      return null;
    }

    return $TafsirModelCopyWith<$Res>(_value.tafsir!, (value) {
      return _then(_value.copyWith(tafsir: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PreBismillahModelCopyWith<$Res>? get preBismillah {
    if (_value.preBismillah == null) {
      return null;
    }

    return $PreBismillahModelCopyWith<$Res>(_value.preBismillah!, (value) {
      return _then(_value.copyWith(preBismillah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurahDetailModelImplCopyWith<$Res>
    implements $SurahDetailModelCopyWith<$Res> {
  factory _$$SurahDetailModelImplCopyWith(_$SurahDetailModelImpl value,
          $Res Function(_$SurahDetailModelImpl) then) =
      __$$SurahDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "number") int? number,
      @JsonKey(name: "sequence") int? sequence,
      @JsonKey(name: "numberOfVerses") int? numberOfVerses,
      @JsonKey(name: "name") NameModel? name,
      @JsonKey(name: "revelation") RevelationModel? revelation,
      @JsonKey(name: "tafsir") TafsirModel? tafsir,
      @JsonKey(name: "preBismillah") PreBismillahModel? preBismillah,
      @JsonKey(name: "verses") List<VerseModel>? verses});

  @override
  $NameModelCopyWith<$Res>? get name;
  @override
  $RevelationModelCopyWith<$Res>? get revelation;
  @override
  $TafsirModelCopyWith<$Res>? get tafsir;
  @override
  $PreBismillahModelCopyWith<$Res>? get preBismillah;
}

/// @nodoc
class __$$SurahDetailModelImplCopyWithImpl<$Res>
    extends _$SurahDetailModelCopyWithImpl<$Res, _$SurahDetailModelImpl>
    implements _$$SurahDetailModelImplCopyWith<$Res> {
  __$$SurahDetailModelImplCopyWithImpl(_$SurahDetailModelImpl _value,
      $Res Function(_$SurahDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? sequence = freezed,
    Object? numberOfVerses = freezed,
    Object? name = freezed,
    Object? revelation = freezed,
    Object? tafsir = freezed,
    Object? preBismillah = freezed,
    Object? verses = freezed,
  }) {
    return _then(_$SurahDetailModelImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfVerses: freezed == numberOfVerses
          ? _value.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModel?,
      revelation: freezed == revelation
          ? _value.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as RevelationModel?,
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as TafsirModel?,
      preBismillah: freezed == preBismillah
          ? _value.preBismillah
          : preBismillah // ignore: cast_nullable_to_non_nullable
              as PreBismillahModel?,
      verses: freezed == verses
          ? _value._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SurahDetailModelImpl implements _SurahDetailModel {
  const _$SurahDetailModelImpl(
      {@JsonKey(name: "number") this.number,
      @JsonKey(name: "sequence") this.sequence,
      @JsonKey(name: "numberOfVerses") this.numberOfVerses,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "revelation") this.revelation,
      @JsonKey(name: "tafsir") this.tafsir,
      @JsonKey(name: "preBismillah") this.preBismillah,
      @JsonKey(name: "verses") final List<VerseModel>? verses})
      : _verses = verses;

  factory _$SurahDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahDetailModelImplFromJson(json);

  @override
  @JsonKey(name: "number")
  final int? number;
  @override
  @JsonKey(name: "sequence")
  final int? sequence;
  @override
  @JsonKey(name: "numberOfVerses")
  final int? numberOfVerses;
  @override
  @JsonKey(name: "name")
  final NameModel? name;
  @override
  @JsonKey(name: "revelation")
  final RevelationModel? revelation;
  @override
  @JsonKey(name: "tafsir")
  final TafsirModel? tafsir;
  @override
  @JsonKey(name: "preBismillah")
  final PreBismillahModel? preBismillah;
  final List<VerseModel>? _verses;
  @override
  @JsonKey(name: "verses")
  List<VerseModel>? get verses {
    final value = _verses;
    if (value == null) return null;
    if (_verses is EqualUnmodifiableListView) return _verses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SurahDetailModel(number: $number, sequence: $sequence, numberOfVerses: $numberOfVerses, name: $name, revelation: $revelation, tafsir: $tafsir, preBismillah: $preBismillah, verses: $verses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahDetailModelImpl &&
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
                other.preBismillah == preBismillah) &&
            const DeepCollectionEquality().equals(other._verses, _verses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      sequence,
      numberOfVerses,
      name,
      revelation,
      tafsir,
      preBismillah,
      const DeepCollectionEquality().hash(_verses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahDetailModelImplCopyWith<_$SurahDetailModelImpl> get copyWith =>
      __$$SurahDetailModelImplCopyWithImpl<_$SurahDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahDetailModelImplToJson(
      this,
    );
  }
}

abstract class _SurahDetailModel implements SurahDetailModel {
  const factory _SurahDetailModel(
          {@JsonKey(name: "number") final int? number,
          @JsonKey(name: "sequence") final int? sequence,
          @JsonKey(name: "numberOfVerses") final int? numberOfVerses,
          @JsonKey(name: "name") final NameModel? name,
          @JsonKey(name: "revelation") final RevelationModel? revelation,
          @JsonKey(name: "tafsir") final TafsirModel? tafsir,
          @JsonKey(name: "preBismillah") final PreBismillahModel? preBismillah,
          @JsonKey(name: "verses") final List<VerseModel>? verses}) =
      _$SurahDetailModelImpl;

  factory _SurahDetailModel.fromJson(Map<String, dynamic> json) =
      _$SurahDetailModelImpl.fromJson;

  @override
  @JsonKey(name: "number")
  int? get number;
  @override
  @JsonKey(name: "sequence")
  int? get sequence;
  @override
  @JsonKey(name: "numberOfVerses")
  int? get numberOfVerses;
  @override
  @JsonKey(name: "name")
  NameModel? get name;
  @override
  @JsonKey(name: "revelation")
  RevelationModel? get revelation;
  @override
  @JsonKey(name: "tafsir")
  TafsirModel? get tafsir;
  @override
  @JsonKey(name: "preBismillah")
  PreBismillahModel? get preBismillah;
  @override
  @JsonKey(name: "verses")
  List<VerseModel>? get verses;
  @override
  @JsonKey(ignore: true)
  _$$SurahDetailModelImplCopyWith<_$SurahDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NameModel _$NameModelFromJson(Map<String, dynamic> json) {
  return _NameModel.fromJson(json);
}

/// @nodoc
mixin _$NameModel {
  @JsonKey(name: "short")
  String? get short => throw _privateConstructorUsedError;
  @JsonKey(name: "long")
  String? get long => throw _privateConstructorUsedError;
  @JsonKey(name: "transliteration")
  TranslationModel? get transliteration => throw _privateConstructorUsedError;
  @JsonKey(name: "translation")
  TranslationModel? get translation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameModelCopyWith<NameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameModelCopyWith<$Res> {
  factory $NameModelCopyWith(NameModel value, $Res Function(NameModel) then) =
      _$NameModelCopyWithImpl<$Res, NameModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "short") String? short,
      @JsonKey(name: "long") String? long,
      @JsonKey(name: "transliteration") TranslationModel? transliteration,
      @JsonKey(name: "translation") TranslationModel? translation});

  $TranslationModelCopyWith<$Res>? get transliteration;
  $TranslationModelCopyWith<$Res>? get translation;
}

/// @nodoc
class _$NameModelCopyWithImpl<$Res, $Val extends NameModel>
    implements $NameModelCopyWith<$Res> {
  _$NameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = freezed,
    Object? long = freezed,
    Object? transliteration = freezed,
    Object? translation = freezed,
  }) {
    return _then(_value.copyWith(
      short: freezed == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      transliteration: freezed == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as TranslationModel?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationModelCopyWith<$Res>? get transliteration {
    if (_value.transliteration == null) {
      return null;
    }

    return $TranslationModelCopyWith<$Res>(_value.transliteration!, (value) {
      return _then(_value.copyWith(transliteration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationModelCopyWith<$Res>? get translation {
    if (_value.translation == null) {
      return null;
    }

    return $TranslationModelCopyWith<$Res>(_value.translation!, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NameModelImplCopyWith<$Res>
    implements $NameModelCopyWith<$Res> {
  factory _$$NameModelImplCopyWith(
          _$NameModelImpl value, $Res Function(_$NameModelImpl) then) =
      __$$NameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "short") String? short,
      @JsonKey(name: "long") String? long,
      @JsonKey(name: "transliteration") TranslationModel? transliteration,
      @JsonKey(name: "translation") TranslationModel? translation});

  @override
  $TranslationModelCopyWith<$Res>? get transliteration;
  @override
  $TranslationModelCopyWith<$Res>? get translation;
}

/// @nodoc
class __$$NameModelImplCopyWithImpl<$Res>
    extends _$NameModelCopyWithImpl<$Res, _$NameModelImpl>
    implements _$$NameModelImplCopyWith<$Res> {
  __$$NameModelImplCopyWithImpl(
      _$NameModelImpl _value, $Res Function(_$NameModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = freezed,
    Object? long = freezed,
    Object? transliteration = freezed,
    Object? translation = freezed,
  }) {
    return _then(_$NameModelImpl(
      short: freezed == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      transliteration: freezed == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as TranslationModel?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NameModelImpl implements _NameModel {
  const _$NameModelImpl(
      {@JsonKey(name: "short") this.short,
      @JsonKey(name: "long") this.long,
      @JsonKey(name: "transliteration") this.transliteration,
      @JsonKey(name: "translation") this.translation});

  factory _$NameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameModelImplFromJson(json);

  @override
  @JsonKey(name: "short")
  final String? short;
  @override
  @JsonKey(name: "long")
  final String? long;
  @override
  @JsonKey(name: "transliteration")
  final TranslationModel? transliteration;
  @override
  @JsonKey(name: "translation")
  final TranslationModel? translation;

  @override
  String toString() {
    return 'NameModel(short: $short, long: $long, transliteration: $transliteration, translation: $translation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameModelImpl &&
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
  _$$NameModelImplCopyWith<_$NameModelImpl> get copyWith =>
      __$$NameModelImplCopyWithImpl<_$NameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameModelImplToJson(
      this,
    );
  }
}

abstract class _NameModel implements NameModel {
  const factory _NameModel(
      {@JsonKey(name: "short") final String? short,
      @JsonKey(name: "long") final String? long,
      @JsonKey(name: "transliteration") final TranslationModel? transliteration,
      @JsonKey(name: "translation")
      final TranslationModel? translation}) = _$NameModelImpl;

  factory _NameModel.fromJson(Map<String, dynamic> json) =
      _$NameModelImpl.fromJson;

  @override
  @JsonKey(name: "short")
  String? get short;
  @override
  @JsonKey(name: "long")
  String? get long;
  @override
  @JsonKey(name: "transliteration")
  TranslationModel? get transliteration;
  @override
  @JsonKey(name: "translation")
  TranslationModel? get translation;
  @override
  @JsonKey(ignore: true)
  _$$NameModelImplCopyWith<_$NameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TranslationModel _$TranslationModelFromJson(Map<String, dynamic> json) {
  return _TranslationModel.fromJson(json);
}

/// @nodoc
mixin _$TranslationModel {
  @JsonKey(name: "en")
  String? get en => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationModelCopyWith<TranslationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationModelCopyWith<$Res> {
  factory $TranslationModelCopyWith(
          TranslationModel value, $Res Function(TranslationModel) then) =
      _$TranslationModelCopyWithImpl<$Res, TranslationModel>;
  @useResult
  $Res call({@JsonKey(name: "en") String? en, @JsonKey(name: "id") String? id});
}

/// @nodoc
class _$TranslationModelCopyWithImpl<$Res, $Val extends TranslationModel>
    implements $TranslationModelCopyWith<$Res> {
  _$TranslationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationModelImplCopyWith<$Res>
    implements $TranslationModelCopyWith<$Res> {
  factory _$$TranslationModelImplCopyWith(_$TranslationModelImpl value,
          $Res Function(_$TranslationModelImpl) then) =
      __$$TranslationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "en") String? en, @JsonKey(name: "id") String? id});
}

/// @nodoc
class __$$TranslationModelImplCopyWithImpl<$Res>
    extends _$TranslationModelCopyWithImpl<$Res, _$TranslationModelImpl>
    implements _$$TranslationModelImplCopyWith<$Res> {
  __$$TranslationModelImplCopyWithImpl(_$TranslationModelImpl _value,
      $Res Function(_$TranslationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? id = freezed,
  }) {
    return _then(_$TranslationModelImpl(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslationModelImpl implements _TranslationModel {
  const _$TranslationModelImpl(
      {@JsonKey(name: "en") this.en, @JsonKey(name: "id") this.id});

  factory _$TranslationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationModelImplFromJson(json);

  @override
  @JsonKey(name: "en")
  final String? en;
  @override
  @JsonKey(name: "id")
  final String? id;

  @override
  String toString() {
    return 'TranslationModel(en: $en, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationModelImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationModelImplCopyWith<_$TranslationModelImpl> get copyWith =>
      __$$TranslationModelImplCopyWithImpl<_$TranslationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationModelImplToJson(
      this,
    );
  }
}

abstract class _TranslationModel implements TranslationModel {
  const factory _TranslationModel(
      {@JsonKey(name: "en") final String? en,
      @JsonKey(name: "id") final String? id}) = _$TranslationModelImpl;

  factory _TranslationModel.fromJson(Map<String, dynamic> json) =
      _$TranslationModelImpl.fromJson;

  @override
  @JsonKey(name: "en")
  String? get en;
  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$TranslationModelImplCopyWith<_$TranslationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PreBismillahModel _$PreBismillahModelFromJson(Map<String, dynamic> json) {
  return _PreBismillahModel.fromJson(json);
}

/// @nodoc
mixin _$PreBismillahModel {
  @JsonKey(name: "text")
  TextsModel? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "translation")
  TranslationModel? get translation => throw _privateConstructorUsedError;
  @JsonKey(name: "audio")
  AudioModel? get audio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreBismillahModelCopyWith<PreBismillahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreBismillahModelCopyWith<$Res> {
  factory $PreBismillahModelCopyWith(
          PreBismillahModel value, $Res Function(PreBismillahModel) then) =
      _$PreBismillahModelCopyWithImpl<$Res, PreBismillahModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "text") TextsModel? text,
      @JsonKey(name: "translation") TranslationModel? translation,
      @JsonKey(name: "audio") AudioModel? audio});

  $TextsModelCopyWith<$Res>? get text;
  $TranslationModelCopyWith<$Res>? get translation;
  $AudioModelCopyWith<$Res>? get audio;
}

/// @nodoc
class _$PreBismillahModelCopyWithImpl<$Res, $Val extends PreBismillahModel>
    implements $PreBismillahModelCopyWith<$Res> {
  _$PreBismillahModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? translation = freezed,
    Object? audio = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextsModel?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationModel?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextsModelCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $TextsModelCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationModelCopyWith<$Res>? get translation {
    if (_value.translation == null) {
      return null;
    }

    return $TranslationModelCopyWith<$Res>(_value.translation!, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioModelCopyWith<$Res>? get audio {
    if (_value.audio == null) {
      return null;
    }

    return $AudioModelCopyWith<$Res>(_value.audio!, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreBismillahModelImplCopyWith<$Res>
    implements $PreBismillahModelCopyWith<$Res> {
  factory _$$PreBismillahModelImplCopyWith(_$PreBismillahModelImpl value,
          $Res Function(_$PreBismillahModelImpl) then) =
      __$$PreBismillahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "text") TextsModel? text,
      @JsonKey(name: "translation") TranslationModel? translation,
      @JsonKey(name: "audio") AudioModel? audio});

  @override
  $TextsModelCopyWith<$Res>? get text;
  @override
  $TranslationModelCopyWith<$Res>? get translation;
  @override
  $AudioModelCopyWith<$Res>? get audio;
}

/// @nodoc
class __$$PreBismillahModelImplCopyWithImpl<$Res>
    extends _$PreBismillahModelCopyWithImpl<$Res, _$PreBismillahModelImpl>
    implements _$$PreBismillahModelImplCopyWith<$Res> {
  __$$PreBismillahModelImplCopyWithImpl(_$PreBismillahModelImpl _value,
      $Res Function(_$PreBismillahModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? translation = freezed,
    Object? audio = freezed,
  }) {
    return _then(_$PreBismillahModelImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextsModel?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationModel?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PreBismillahModelImpl implements _PreBismillahModel {
  const _$PreBismillahModelImpl(
      {@JsonKey(name: "text") this.text,
      @JsonKey(name: "translation") this.translation,
      @JsonKey(name: "audio") this.audio});

  factory _$PreBismillahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreBismillahModelImplFromJson(json);

  @override
  @JsonKey(name: "text")
  final TextsModel? text;
  @override
  @JsonKey(name: "translation")
  final TranslationModel? translation;
  @override
  @JsonKey(name: "audio")
  final AudioModel? audio;

  @override
  String toString() {
    return 'PreBismillahModel(text: $text, translation: $translation, audio: $audio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreBismillahModelImpl &&
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
  _$$PreBismillahModelImplCopyWith<_$PreBismillahModelImpl> get copyWith =>
      __$$PreBismillahModelImplCopyWithImpl<_$PreBismillahModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreBismillahModelImplToJson(
      this,
    );
  }
}

abstract class _PreBismillahModel implements PreBismillahModel {
  const factory _PreBismillahModel(
          {@JsonKey(name: "text") final TextsModel? text,
          @JsonKey(name: "translation") final TranslationModel? translation,
          @JsonKey(name: "audio") final AudioModel? audio}) =
      _$PreBismillahModelImpl;

  factory _PreBismillahModel.fromJson(Map<String, dynamic> json) =
      _$PreBismillahModelImpl.fromJson;

  @override
  @JsonKey(name: "text")
  TextsModel? get text;
  @override
  @JsonKey(name: "translation")
  TranslationModel? get translation;
  @override
  @JsonKey(name: "audio")
  AudioModel? get audio;
  @override
  @JsonKey(ignore: true)
  _$$PreBismillahModelImplCopyWith<_$PreBismillahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioModel _$AudioModelFromJson(Map<String, dynamic> json) {
  return _AudioModel.fromJson(json);
}

/// @nodoc
mixin _$AudioModel {
  @JsonKey(name: "primary")
  String? get primary => throw _privateConstructorUsedError;
  @JsonKey(name: "secondary")
  List<String>? get secondary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioModelCopyWith<AudioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioModelCopyWith<$Res> {
  factory $AudioModelCopyWith(
          AudioModel value, $Res Function(AudioModel) then) =
      _$AudioModelCopyWithImpl<$Res, AudioModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "primary") String? primary,
      @JsonKey(name: "secondary") List<String>? secondary});
}

/// @nodoc
class _$AudioModelCopyWithImpl<$Res, $Val extends AudioModel>
    implements $AudioModelCopyWith<$Res> {
  _$AudioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
  }) {
    return _then(_value.copyWith(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioModelImplCopyWith<$Res>
    implements $AudioModelCopyWith<$Res> {
  factory _$$AudioModelImplCopyWith(
          _$AudioModelImpl value, $Res Function(_$AudioModelImpl) then) =
      __$$AudioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "primary") String? primary,
      @JsonKey(name: "secondary") List<String>? secondary});
}

/// @nodoc
class __$$AudioModelImplCopyWithImpl<$Res>
    extends _$AudioModelCopyWithImpl<$Res, _$AudioModelImpl>
    implements _$$AudioModelImplCopyWith<$Res> {
  __$$AudioModelImplCopyWithImpl(
      _$AudioModelImpl _value, $Res Function(_$AudioModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
  }) {
    return _then(_$AudioModelImpl(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      secondary: freezed == secondary
          ? _value._secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioModelImpl implements _AudioModel {
  const _$AudioModelImpl(
      {@JsonKey(name: "primary") this.primary,
      @JsonKey(name: "secondary") final List<String>? secondary})
      : _secondary = secondary;

  factory _$AudioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioModelImplFromJson(json);

  @override
  @JsonKey(name: "primary")
  final String? primary;
  final List<String>? _secondary;
  @override
  @JsonKey(name: "secondary")
  List<String>? get secondary {
    final value = _secondary;
    if (value == null) return null;
    if (_secondary is EqualUnmodifiableListView) return _secondary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AudioModel(primary: $primary, secondary: $secondary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioModelImpl &&
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
  _$$AudioModelImplCopyWith<_$AudioModelImpl> get copyWith =>
      __$$AudioModelImplCopyWithImpl<_$AudioModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioModelImplToJson(
      this,
    );
  }
}

abstract class _AudioModel implements AudioModel {
  const factory _AudioModel(
          {@JsonKey(name: "primary") final String? primary,
          @JsonKey(name: "secondary") final List<String>? secondary}) =
      _$AudioModelImpl;

  factory _AudioModel.fromJson(Map<String, dynamic> json) =
      _$AudioModelImpl.fromJson;

  @override
  @JsonKey(name: "primary")
  String? get primary;
  @override
  @JsonKey(name: "secondary")
  List<String>? get secondary;
  @override
  @JsonKey(ignore: true)
  _$$AudioModelImplCopyWith<_$AudioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TextsModel _$TextsModelFromJson(Map<String, dynamic> json) {
  return _TextsModel.fromJson(json);
}

/// @nodoc
mixin _$TextsModel {
  @JsonKey(name: "arab")
  String? get arab => throw _privateConstructorUsedError;
  @JsonKey(name: "transliteration")
  TransliterationModel? get transliteration =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextsModelCopyWith<TextsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextsModelCopyWith<$Res> {
  factory $TextsModelCopyWith(
          TextsModel value, $Res Function(TextsModel) then) =
      _$TextsModelCopyWithImpl<$Res, TextsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "arab") String? arab,
      @JsonKey(name: "transliteration") TransliterationModel? transliteration});

  $TransliterationModelCopyWith<$Res>? get transliteration;
}

/// @nodoc
class _$TextsModelCopyWithImpl<$Res, $Val extends TextsModel>
    implements $TextsModelCopyWith<$Res> {
  _$TextsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = freezed,
    Object? transliteration = freezed,
  }) {
    return _then(_value.copyWith(
      arab: freezed == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String?,
      transliteration: freezed == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as TransliterationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransliterationModelCopyWith<$Res>? get transliteration {
    if (_value.transliteration == null) {
      return null;
    }

    return $TransliterationModelCopyWith<$Res>(_value.transliteration!,
        (value) {
      return _then(_value.copyWith(transliteration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextsModelImplCopyWith<$Res>
    implements $TextsModelCopyWith<$Res> {
  factory _$$TextsModelImplCopyWith(
          _$TextsModelImpl value, $Res Function(_$TextsModelImpl) then) =
      __$$TextsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "arab") String? arab,
      @JsonKey(name: "transliteration") TransliterationModel? transliteration});

  @override
  $TransliterationModelCopyWith<$Res>? get transliteration;
}

/// @nodoc
class __$$TextsModelImplCopyWithImpl<$Res>
    extends _$TextsModelCopyWithImpl<$Res, _$TextsModelImpl>
    implements _$$TextsModelImplCopyWith<$Res> {
  __$$TextsModelImplCopyWithImpl(
      _$TextsModelImpl _value, $Res Function(_$TextsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = freezed,
    Object? transliteration = freezed,
  }) {
    return _then(_$TextsModelImpl(
      arab: freezed == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String?,
      transliteration: freezed == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as TransliterationModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TextsModelImpl implements _TextsModel {
  const _$TextsModelImpl(
      {@JsonKey(name: "arab") this.arab,
      @JsonKey(name: "transliteration") this.transliteration});

  factory _$TextsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextsModelImplFromJson(json);

  @override
  @JsonKey(name: "arab")
  final String? arab;
  @override
  @JsonKey(name: "transliteration")
  final TransliterationModel? transliteration;

  @override
  String toString() {
    return 'TextsModel(arab: $arab, transliteration: $transliteration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextsModelImpl &&
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
  _$$TextsModelImplCopyWith<_$TextsModelImpl> get copyWith =>
      __$$TextsModelImplCopyWithImpl<_$TextsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextsModelImplToJson(
      this,
    );
  }
}

abstract class _TextsModel implements TextsModel {
  const factory _TextsModel(
      {@JsonKey(name: "arab") final String? arab,
      @JsonKey(name: "transliteration")
      final TransliterationModel? transliteration}) = _$TextsModelImpl;

  factory _TextsModel.fromJson(Map<String, dynamic> json) =
      _$TextsModelImpl.fromJson;

  @override
  @JsonKey(name: "arab")
  String? get arab;
  @override
  @JsonKey(name: "transliteration")
  TransliterationModel? get transliteration;
  @override
  @JsonKey(ignore: true)
  _$$TextsModelImplCopyWith<_$TextsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransliterationModel _$TransliterationModelFromJson(Map<String, dynamic> json) {
  return _TransliterationModel.fromJson(json);
}

/// @nodoc
mixin _$TransliterationModel {
  @JsonKey(name: "en")
  String? get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransliterationModelCopyWith<TransliterationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransliterationModelCopyWith<$Res> {
  factory $TransliterationModelCopyWith(TransliterationModel value,
          $Res Function(TransliterationModel) then) =
      _$TransliterationModelCopyWithImpl<$Res, TransliterationModel>;
  @useResult
  $Res call({@JsonKey(name: "en") String? en});
}

/// @nodoc
class _$TransliterationModelCopyWithImpl<$Res,
        $Val extends TransliterationModel>
    implements $TransliterationModelCopyWith<$Res> {
  _$TransliterationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransliterationModelImplCopyWith<$Res>
    implements $TransliterationModelCopyWith<$Res> {
  factory _$$TransliterationModelImplCopyWith(_$TransliterationModelImpl value,
          $Res Function(_$TransliterationModelImpl) then) =
      __$$TransliterationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "en") String? en});
}

/// @nodoc
class __$$TransliterationModelImplCopyWithImpl<$Res>
    extends _$TransliterationModelCopyWithImpl<$Res, _$TransliterationModelImpl>
    implements _$$TransliterationModelImplCopyWith<$Res> {
  __$$TransliterationModelImplCopyWithImpl(_$TransliterationModelImpl _value,
      $Res Function(_$TransliterationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
  }) {
    return _then(_$TransliterationModelImpl(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransliterationModelImpl implements _TransliterationModel {
  const _$TransliterationModelImpl({@JsonKey(name: "en") this.en});

  factory _$TransliterationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransliterationModelImplFromJson(json);

  @override
  @JsonKey(name: "en")
  final String? en;

  @override
  String toString() {
    return 'TransliterationModel(en: $en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransliterationModelImpl &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransliterationModelImplCopyWith<_$TransliterationModelImpl>
      get copyWith =>
          __$$TransliterationModelImplCopyWithImpl<_$TransliterationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransliterationModelImplToJson(
      this,
    );
  }
}

abstract class _TransliterationModel implements TransliterationModel {
  const factory _TransliterationModel({@JsonKey(name: "en") final String? en}) =
      _$TransliterationModelImpl;

  factory _TransliterationModel.fromJson(Map<String, dynamic> json) =
      _$TransliterationModelImpl.fromJson;

  @override
  @JsonKey(name: "en")
  String? get en;
  @override
  @JsonKey(ignore: true)
  _$$TransliterationModelImplCopyWith<_$TransliterationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RevelationModel _$RevelationModelFromJson(Map<String, dynamic> json) {
  return _RevelationModel.fromJson(json);
}

/// @nodoc
mixin _$RevelationModel {
  @JsonKey(name: "arab")
  String? get arab => throw _privateConstructorUsedError;
  @JsonKey(name: "en")
  String? get en => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RevelationModelCopyWith<RevelationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevelationModelCopyWith<$Res> {
  factory $RevelationModelCopyWith(
          RevelationModel value, $Res Function(RevelationModel) then) =
      _$RevelationModelCopyWithImpl<$Res, RevelationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "arab") String? arab,
      @JsonKey(name: "en") String? en,
      @JsonKey(name: "id") String? id});
}

/// @nodoc
class _$RevelationModelCopyWithImpl<$Res, $Val extends RevelationModel>
    implements $RevelationModelCopyWith<$Res> {
  _$RevelationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = freezed,
    Object? en = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      arab: freezed == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RevelationModelImplCopyWith<$Res>
    implements $RevelationModelCopyWith<$Res> {
  factory _$$RevelationModelImplCopyWith(_$RevelationModelImpl value,
          $Res Function(_$RevelationModelImpl) then) =
      __$$RevelationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "arab") String? arab,
      @JsonKey(name: "en") String? en,
      @JsonKey(name: "id") String? id});
}

/// @nodoc
class __$$RevelationModelImplCopyWithImpl<$Res>
    extends _$RevelationModelCopyWithImpl<$Res, _$RevelationModelImpl>
    implements _$$RevelationModelImplCopyWith<$Res> {
  __$$RevelationModelImplCopyWithImpl(
      _$RevelationModelImpl _value, $Res Function(_$RevelationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = freezed,
    Object? en = freezed,
    Object? id = freezed,
  }) {
    return _then(_$RevelationModelImpl(
      arab: freezed == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevelationModelImpl implements _RevelationModel {
  const _$RevelationModelImpl(
      {@JsonKey(name: "arab") this.arab,
      @JsonKey(name: "en") this.en,
      @JsonKey(name: "id") this.id});

  factory _$RevelationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevelationModelImplFromJson(json);

  @override
  @JsonKey(name: "arab")
  final String? arab;
  @override
  @JsonKey(name: "en")
  final String? en;
  @override
  @JsonKey(name: "id")
  final String? id;

  @override
  String toString() {
    return 'RevelationModel(arab: $arab, en: $en, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevelationModelImpl &&
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
  _$$RevelationModelImplCopyWith<_$RevelationModelImpl> get copyWith =>
      __$$RevelationModelImplCopyWithImpl<_$RevelationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevelationModelImplToJson(
      this,
    );
  }
}

abstract class _RevelationModel implements RevelationModel {
  const factory _RevelationModel(
      {@JsonKey(name: "arab") final String? arab,
      @JsonKey(name: "en") final String? en,
      @JsonKey(name: "id") final String? id}) = _$RevelationModelImpl;

  factory _RevelationModel.fromJson(Map<String, dynamic> json) =
      _$RevelationModelImpl.fromJson;

  @override
  @JsonKey(name: "arab")
  String? get arab;
  @override
  @JsonKey(name: "en")
  String? get en;
  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$RevelationModelImplCopyWith<_$RevelationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TafsirModel _$TafsirModelFromJson(Map<String, dynamic> json) {
  return _TafsirModel.fromJson(json);
}

/// @nodoc
mixin _$TafsirModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TafsirModelCopyWith<TafsirModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TafsirModelCopyWith<$Res> {
  factory $TafsirModelCopyWith(
          TafsirModel value, $Res Function(TafsirModel) then) =
      _$TafsirModelCopyWithImpl<$Res, TafsirModel>;
  @useResult
  $Res call({@JsonKey(name: "id") String? id});
}

/// @nodoc
class _$TafsirModelCopyWithImpl<$Res, $Val extends TafsirModel>
    implements $TafsirModelCopyWith<$Res> {
  _$TafsirModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TafsirModelImplCopyWith<$Res>
    implements $TafsirModelCopyWith<$Res> {
  factory _$$TafsirModelImplCopyWith(
          _$TafsirModelImpl value, $Res Function(_$TafsirModelImpl) then) =
      __$$TafsirModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") String? id});
}

/// @nodoc
class __$$TafsirModelImplCopyWithImpl<$Res>
    extends _$TafsirModelCopyWithImpl<$Res, _$TafsirModelImpl>
    implements _$$TafsirModelImplCopyWith<$Res> {
  __$$TafsirModelImplCopyWithImpl(
      _$TafsirModelImpl _value, $Res Function(_$TafsirModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$TafsirModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TafsirModelImpl implements _TafsirModel {
  const _$TafsirModelImpl({@JsonKey(name: "id") this.id});

  factory _$TafsirModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TafsirModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;

  @override
  String toString() {
    return 'TafsirModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TafsirModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TafsirModelImplCopyWith<_$TafsirModelImpl> get copyWith =>
      __$$TafsirModelImplCopyWithImpl<_$TafsirModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TafsirModelImplToJson(
      this,
    );
  }
}

abstract class _TafsirModel implements TafsirModel {
  const factory _TafsirModel({@JsonKey(name: "id") final String? id}) =
      _$TafsirModelImpl;

  factory _TafsirModel.fromJson(Map<String, dynamic> json) =
      _$TafsirModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$TafsirModelImplCopyWith<_$TafsirModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerseModel _$VerseModelFromJson(Map<String, dynamic> json) {
  return _VerseModel.fromJson(json);
}

/// @nodoc
mixin _$VerseModel {
  @JsonKey(name: "number")
  NumberModel? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  MetaModel? get meta => throw _privateConstructorUsedError;
  @JsonKey(name: "text")
  TextsModel? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "translation")
  TranslationModel? get translation => throw _privateConstructorUsedError;
  @JsonKey(name: "audio")
  AudioModel? get audio => throw _privateConstructorUsedError;
  @JsonKey(name: "tafsir")
  VerseTafsirModel? get tafsir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerseModelCopyWith<VerseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseModelCopyWith<$Res> {
  factory $VerseModelCopyWith(
          VerseModel value, $Res Function(VerseModel) then) =
      _$VerseModelCopyWithImpl<$Res, VerseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "number") NumberModel? number,
      @JsonKey(name: "meta") MetaModel? meta,
      @JsonKey(name: "text") TextsModel? text,
      @JsonKey(name: "translation") TranslationModel? translation,
      @JsonKey(name: "audio") AudioModel? audio,
      @JsonKey(name: "tafsir") VerseTafsirModel? tafsir});

  $NumberModelCopyWith<$Res>? get number;
  $MetaModelCopyWith<$Res>? get meta;
  $TextsModelCopyWith<$Res>? get text;
  $TranslationModelCopyWith<$Res>? get translation;
  $AudioModelCopyWith<$Res>? get audio;
  $VerseTafsirModelCopyWith<$Res>? get tafsir;
}

/// @nodoc
class _$VerseModelCopyWithImpl<$Res, $Val extends VerseModel>
    implements $VerseModelCopyWith<$Res> {
  _$VerseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? meta = freezed,
    Object? text = freezed,
    Object? translation = freezed,
    Object? audio = freezed,
    Object? tafsir = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as NumberModel?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextsModel?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationModel?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioModel?,
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as VerseTafsirModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NumberModelCopyWith<$Res>? get number {
    if (_value.number == null) {
      return null;
    }

    return $NumberModelCopyWith<$Res>(_value.number!, (value) {
      return _then(_value.copyWith(number: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaModelCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaModelCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextsModelCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $TextsModelCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationModelCopyWith<$Res>? get translation {
    if (_value.translation == null) {
      return null;
    }

    return $TranslationModelCopyWith<$Res>(_value.translation!, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioModelCopyWith<$Res>? get audio {
    if (_value.audio == null) {
      return null;
    }

    return $AudioModelCopyWith<$Res>(_value.audio!, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VerseTafsirModelCopyWith<$Res>? get tafsir {
    if (_value.tafsir == null) {
      return null;
    }

    return $VerseTafsirModelCopyWith<$Res>(_value.tafsir!, (value) {
      return _then(_value.copyWith(tafsir: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerseModelImplCopyWith<$Res>
    implements $VerseModelCopyWith<$Res> {
  factory _$$VerseModelImplCopyWith(
          _$VerseModelImpl value, $Res Function(_$VerseModelImpl) then) =
      __$$VerseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "number") NumberModel? number,
      @JsonKey(name: "meta") MetaModel? meta,
      @JsonKey(name: "text") TextsModel? text,
      @JsonKey(name: "translation") TranslationModel? translation,
      @JsonKey(name: "audio") AudioModel? audio,
      @JsonKey(name: "tafsir") VerseTafsirModel? tafsir});

  @override
  $NumberModelCopyWith<$Res>? get number;
  @override
  $MetaModelCopyWith<$Res>? get meta;
  @override
  $TextsModelCopyWith<$Res>? get text;
  @override
  $TranslationModelCopyWith<$Res>? get translation;
  @override
  $AudioModelCopyWith<$Res>? get audio;
  @override
  $VerseTafsirModelCopyWith<$Res>? get tafsir;
}

/// @nodoc
class __$$VerseModelImplCopyWithImpl<$Res>
    extends _$VerseModelCopyWithImpl<$Res, _$VerseModelImpl>
    implements _$$VerseModelImplCopyWith<$Res> {
  __$$VerseModelImplCopyWithImpl(
      _$VerseModelImpl _value, $Res Function(_$VerseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? meta = freezed,
    Object? text = freezed,
    Object? translation = freezed,
    Object? audio = freezed,
    Object? tafsir = freezed,
  }) {
    return _then(_$VerseModelImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as NumberModel?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextsModel?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationModel?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioModel?,
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as VerseTafsirModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VerseModelImpl implements _VerseModel {
  const _$VerseModelImpl(
      {@JsonKey(name: "number") this.number,
      @JsonKey(name: "meta") this.meta,
      @JsonKey(name: "text") this.text,
      @JsonKey(name: "translation") this.translation,
      @JsonKey(name: "audio") this.audio,
      @JsonKey(name: "tafsir") this.tafsir});

  factory _$VerseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerseModelImplFromJson(json);

  @override
  @JsonKey(name: "number")
  final NumberModel? number;
  @override
  @JsonKey(name: "meta")
  final MetaModel? meta;
  @override
  @JsonKey(name: "text")
  final TextsModel? text;
  @override
  @JsonKey(name: "translation")
  final TranslationModel? translation;
  @override
  @JsonKey(name: "audio")
  final AudioModel? audio;
  @override
  @JsonKey(name: "tafsir")
  final VerseTafsirModel? tafsir;

  @override
  String toString() {
    return 'VerseModel(number: $number, meta: $meta, text: $text, translation: $translation, audio: $audio, tafsir: $tafsir)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerseModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.tafsir, tafsir) || other.tafsir == tafsir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, number, meta, text, translation, audio, tafsir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerseModelImplCopyWith<_$VerseModelImpl> get copyWith =>
      __$$VerseModelImplCopyWithImpl<_$VerseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerseModelImplToJson(
      this,
    );
  }
}

abstract class _VerseModel implements VerseModel {
  const factory _VerseModel(
          {@JsonKey(name: "number") final NumberModel? number,
          @JsonKey(name: "meta") final MetaModel? meta,
          @JsonKey(name: "text") final TextsModel? text,
          @JsonKey(name: "translation") final TranslationModel? translation,
          @JsonKey(name: "audio") final AudioModel? audio,
          @JsonKey(name: "tafsir") final VerseTafsirModel? tafsir}) =
      _$VerseModelImpl;

  factory _VerseModel.fromJson(Map<String, dynamic> json) =
      _$VerseModelImpl.fromJson;

  @override
  @JsonKey(name: "number")
  NumberModel? get number;
  @override
  @JsonKey(name: "meta")
  MetaModel? get meta;
  @override
  @JsonKey(name: "text")
  TextsModel? get text;
  @override
  @JsonKey(name: "translation")
  TranslationModel? get translation;
  @override
  @JsonKey(name: "audio")
  AudioModel? get audio;
  @override
  @JsonKey(name: "tafsir")
  VerseTafsirModel? get tafsir;
  @override
  @JsonKey(ignore: true)
  _$$VerseModelImplCopyWith<_$VerseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaModel _$MetaModelFromJson(Map<String, dynamic> json) {
  return _MetaModel.fromJson(json);
}

/// @nodoc
mixin _$MetaModel {
  @JsonKey(name: "juz")
  int? get juz => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "manzil")
  int? get manzil => throw _privateConstructorUsedError;
  @JsonKey(name: "ruku")
  int? get ruku => throw _privateConstructorUsedError;
  @JsonKey(name: "hizbQuarter")
  int? get hizbQuarter => throw _privateConstructorUsedError;
  @JsonKey(name: "sajda")
  SajdaModel? get sajda => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaModelCopyWith<MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaModelCopyWith<$Res> {
  factory $MetaModelCopyWith(MetaModel value, $Res Function(MetaModel) then) =
      _$MetaModelCopyWithImpl<$Res, MetaModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "juz") int? juz,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "manzil") int? manzil,
      @JsonKey(name: "ruku") int? ruku,
      @JsonKey(name: "hizbQuarter") int? hizbQuarter,
      @JsonKey(name: "sajda") SajdaModel? sajda});

  $SajdaModelCopyWith<$Res>? get sajda;
}

/// @nodoc
class _$MetaModelCopyWithImpl<$Res, $Val extends MetaModel>
    implements $MetaModelCopyWith<$Res> {
  _$MetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? juz = freezed,
    Object? page = freezed,
    Object? manzil = freezed,
    Object? ruku = freezed,
    Object? hizbQuarter = freezed,
    Object? sajda = freezed,
  }) {
    return _then(_value.copyWith(
      juz: freezed == juz
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      manzil: freezed == manzil
          ? _value.manzil
          : manzil // ignore: cast_nullable_to_non_nullable
              as int?,
      ruku: freezed == ruku
          ? _value.ruku
          : ruku // ignore: cast_nullable_to_non_nullable
              as int?,
      hizbQuarter: freezed == hizbQuarter
          ? _value.hizbQuarter
          : hizbQuarter // ignore: cast_nullable_to_non_nullable
              as int?,
      sajda: freezed == sajda
          ? _value.sajda
          : sajda // ignore: cast_nullable_to_non_nullable
              as SajdaModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SajdaModelCopyWith<$Res>? get sajda {
    if (_value.sajda == null) {
      return null;
    }

    return $SajdaModelCopyWith<$Res>(_value.sajda!, (value) {
      return _then(_value.copyWith(sajda: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaModelImplCopyWith<$Res>
    implements $MetaModelCopyWith<$Res> {
  factory _$$MetaModelImplCopyWith(
          _$MetaModelImpl value, $Res Function(_$MetaModelImpl) then) =
      __$$MetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "juz") int? juz,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "manzil") int? manzil,
      @JsonKey(name: "ruku") int? ruku,
      @JsonKey(name: "hizbQuarter") int? hizbQuarter,
      @JsonKey(name: "sajda") SajdaModel? sajda});

  @override
  $SajdaModelCopyWith<$Res>? get sajda;
}

/// @nodoc
class __$$MetaModelImplCopyWithImpl<$Res>
    extends _$MetaModelCopyWithImpl<$Res, _$MetaModelImpl>
    implements _$$MetaModelImplCopyWith<$Res> {
  __$$MetaModelImplCopyWithImpl(
      _$MetaModelImpl _value, $Res Function(_$MetaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? juz = freezed,
    Object? page = freezed,
    Object? manzil = freezed,
    Object? ruku = freezed,
    Object? hizbQuarter = freezed,
    Object? sajda = freezed,
  }) {
    return _then(_$MetaModelImpl(
      juz: freezed == juz
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      manzil: freezed == manzil
          ? _value.manzil
          : manzil // ignore: cast_nullable_to_non_nullable
              as int?,
      ruku: freezed == ruku
          ? _value.ruku
          : ruku // ignore: cast_nullable_to_non_nullable
              as int?,
      hizbQuarter: freezed == hizbQuarter
          ? _value.hizbQuarter
          : hizbQuarter // ignore: cast_nullable_to_non_nullable
              as int?,
      sajda: freezed == sajda
          ? _value.sajda
          : sajda // ignore: cast_nullable_to_non_nullable
              as SajdaModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MetaModelImpl implements _MetaModel {
  const _$MetaModelImpl(
      {@JsonKey(name: "juz") this.juz,
      @JsonKey(name: "page") this.page,
      @JsonKey(name: "manzil") this.manzil,
      @JsonKey(name: "ruku") this.ruku,
      @JsonKey(name: "hizbQuarter") this.hizbQuarter,
      @JsonKey(name: "sajda") this.sajda});

  factory _$MetaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaModelImplFromJson(json);

  @override
  @JsonKey(name: "juz")
  final int? juz;
  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "manzil")
  final int? manzil;
  @override
  @JsonKey(name: "ruku")
  final int? ruku;
  @override
  @JsonKey(name: "hizbQuarter")
  final int? hizbQuarter;
  @override
  @JsonKey(name: "sajda")
  final SajdaModel? sajda;

  @override
  String toString() {
    return 'MetaModel(juz: $juz, page: $page, manzil: $manzil, ruku: $ruku, hizbQuarter: $hizbQuarter, sajda: $sajda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaModelImpl &&
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
  _$$MetaModelImplCopyWith<_$MetaModelImpl> get copyWith =>
      __$$MetaModelImplCopyWithImpl<_$MetaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaModelImplToJson(
      this,
    );
  }
}

abstract class _MetaModel implements MetaModel {
  const factory _MetaModel(
      {@JsonKey(name: "juz") final int? juz,
      @JsonKey(name: "page") final int? page,
      @JsonKey(name: "manzil") final int? manzil,
      @JsonKey(name: "ruku") final int? ruku,
      @JsonKey(name: "hizbQuarter") final int? hizbQuarter,
      @JsonKey(name: "sajda") final SajdaModel? sajda}) = _$MetaModelImpl;

  factory _MetaModel.fromJson(Map<String, dynamic> json) =
      _$MetaModelImpl.fromJson;

  @override
  @JsonKey(name: "juz")
  int? get juz;
  @override
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(name: "manzil")
  int? get manzil;
  @override
  @JsonKey(name: "ruku")
  int? get ruku;
  @override
  @JsonKey(name: "hizbQuarter")
  int? get hizbQuarter;
  @override
  @JsonKey(name: "sajda")
  SajdaModel? get sajda;
  @override
  @JsonKey(ignore: true)
  _$$MetaModelImplCopyWith<_$MetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SajdaModel _$SajdaModelFromJson(Map<String, dynamic> json) {
  return _SajdaModel.fromJson(json);
}

/// @nodoc
mixin _$SajdaModel {
  @JsonKey(name: "recommended")
  bool? get recommended => throw _privateConstructorUsedError;
  @JsonKey(name: "obligatory")
  bool? get obligatory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SajdaModelCopyWith<SajdaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SajdaModelCopyWith<$Res> {
  factory $SajdaModelCopyWith(
          SajdaModel value, $Res Function(SajdaModel) then) =
      _$SajdaModelCopyWithImpl<$Res, SajdaModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "recommended") bool? recommended,
      @JsonKey(name: "obligatory") bool? obligatory});
}

/// @nodoc
class _$SajdaModelCopyWithImpl<$Res, $Val extends SajdaModel>
    implements $SajdaModelCopyWith<$Res> {
  _$SajdaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommended = freezed,
    Object? obligatory = freezed,
  }) {
    return _then(_value.copyWith(
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool?,
      obligatory: freezed == obligatory
          ? _value.obligatory
          : obligatory // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SajdaModelImplCopyWith<$Res>
    implements $SajdaModelCopyWith<$Res> {
  factory _$$SajdaModelImplCopyWith(
          _$SajdaModelImpl value, $Res Function(_$SajdaModelImpl) then) =
      __$$SajdaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "recommended") bool? recommended,
      @JsonKey(name: "obligatory") bool? obligatory});
}

/// @nodoc
class __$$SajdaModelImplCopyWithImpl<$Res>
    extends _$SajdaModelCopyWithImpl<$Res, _$SajdaModelImpl>
    implements _$$SajdaModelImplCopyWith<$Res> {
  __$$SajdaModelImplCopyWithImpl(
      _$SajdaModelImpl _value, $Res Function(_$SajdaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommended = freezed,
    Object? obligatory = freezed,
  }) {
    return _then(_$SajdaModelImpl(
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool?,
      obligatory: freezed == obligatory
          ? _value.obligatory
          : obligatory // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SajdaModelImpl implements _SajdaModel {
  const _$SajdaModelImpl(
      {@JsonKey(name: "recommended") this.recommended,
      @JsonKey(name: "obligatory") this.obligatory});

  factory _$SajdaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SajdaModelImplFromJson(json);

  @override
  @JsonKey(name: "recommended")
  final bool? recommended;
  @override
  @JsonKey(name: "obligatory")
  final bool? obligatory;

  @override
  String toString() {
    return 'SajdaModel(recommended: $recommended, obligatory: $obligatory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SajdaModelImpl &&
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
  _$$SajdaModelImplCopyWith<_$SajdaModelImpl> get copyWith =>
      __$$SajdaModelImplCopyWithImpl<_$SajdaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SajdaModelImplToJson(
      this,
    );
  }
}

abstract class _SajdaModel implements SajdaModel {
  const factory _SajdaModel(
      {@JsonKey(name: "recommended") final bool? recommended,
      @JsonKey(name: "obligatory") final bool? obligatory}) = _$SajdaModelImpl;

  factory _SajdaModel.fromJson(Map<String, dynamic> json) =
      _$SajdaModelImpl.fromJson;

  @override
  @JsonKey(name: "recommended")
  bool? get recommended;
  @override
  @JsonKey(name: "obligatory")
  bool? get obligatory;
  @override
  @JsonKey(ignore: true)
  _$$SajdaModelImplCopyWith<_$SajdaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NumberModel _$NumberModelFromJson(Map<String, dynamic> json) {
  return _NumberModel.fromJson(json);
}

/// @nodoc
mixin _$NumberModel {
  @JsonKey(name: "inQuran")
  int? get inQuran => throw _privateConstructorUsedError;
  @JsonKey(name: "inSurah")
  int? get inSurah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberModelCopyWith<NumberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberModelCopyWith<$Res> {
  factory $NumberModelCopyWith(
          NumberModel value, $Res Function(NumberModel) then) =
      _$NumberModelCopyWithImpl<$Res, NumberModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "inQuran") int? inQuran,
      @JsonKey(name: "inSurah") int? inSurah});
}

/// @nodoc
class _$NumberModelCopyWithImpl<$Res, $Val extends NumberModel>
    implements $NumberModelCopyWith<$Res> {
  _$NumberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inQuran = freezed,
    Object? inSurah = freezed,
  }) {
    return _then(_value.copyWith(
      inQuran: freezed == inQuran
          ? _value.inQuran
          : inQuran // ignore: cast_nullable_to_non_nullable
              as int?,
      inSurah: freezed == inSurah
          ? _value.inSurah
          : inSurah // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NumberModelImplCopyWith<$Res>
    implements $NumberModelCopyWith<$Res> {
  factory _$$NumberModelImplCopyWith(
          _$NumberModelImpl value, $Res Function(_$NumberModelImpl) then) =
      __$$NumberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "inQuran") int? inQuran,
      @JsonKey(name: "inSurah") int? inSurah});
}

/// @nodoc
class __$$NumberModelImplCopyWithImpl<$Res>
    extends _$NumberModelCopyWithImpl<$Res, _$NumberModelImpl>
    implements _$$NumberModelImplCopyWith<$Res> {
  __$$NumberModelImplCopyWithImpl(
      _$NumberModelImpl _value, $Res Function(_$NumberModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inQuran = freezed,
    Object? inSurah = freezed,
  }) {
    return _then(_$NumberModelImpl(
      inQuran: freezed == inQuran
          ? _value.inQuran
          : inQuran // ignore: cast_nullable_to_non_nullable
              as int?,
      inSurah: freezed == inSurah
          ? _value.inSurah
          : inSurah // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumberModelImpl implements _NumberModel {
  const _$NumberModelImpl(
      {@JsonKey(name: "inQuran") this.inQuran,
      @JsonKey(name: "inSurah") this.inSurah});

  factory _$NumberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumberModelImplFromJson(json);

  @override
  @JsonKey(name: "inQuran")
  final int? inQuran;
  @override
  @JsonKey(name: "inSurah")
  final int? inSurah;

  @override
  String toString() {
    return 'NumberModel(inQuran: $inQuran, inSurah: $inSurah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberModelImpl &&
            (identical(other.inQuran, inQuran) || other.inQuran == inQuran) &&
            (identical(other.inSurah, inSurah) || other.inSurah == inSurah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, inQuran, inSurah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberModelImplCopyWith<_$NumberModelImpl> get copyWith =>
      __$$NumberModelImplCopyWithImpl<_$NumberModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NumberModelImplToJson(
      this,
    );
  }
}

abstract class _NumberModel implements NumberModel {
  const factory _NumberModel(
      {@JsonKey(name: "inQuran") final int? inQuran,
      @JsonKey(name: "inSurah") final int? inSurah}) = _$NumberModelImpl;

  factory _NumberModel.fromJson(Map<String, dynamic> json) =
      _$NumberModelImpl.fromJson;

  @override
  @JsonKey(name: "inQuran")
  int? get inQuran;
  @override
  @JsonKey(name: "inSurah")
  int? get inSurah;
  @override
  @JsonKey(ignore: true)
  _$$NumberModelImplCopyWith<_$NumberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerseTafsirModel _$VerseTafsirModelFromJson(Map<String, dynamic> json) {
  return _VerseTafsirModel.fromJson(json);
}

/// @nodoc
mixin _$VerseTafsirModel {
  @JsonKey(name: "id")
  IdModel? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerseTafsirModelCopyWith<VerseTafsirModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseTafsirModelCopyWith<$Res> {
  factory $VerseTafsirModelCopyWith(
          VerseTafsirModel value, $Res Function(VerseTafsirModel) then) =
      _$VerseTafsirModelCopyWithImpl<$Res, VerseTafsirModel>;
  @useResult
  $Res call({@JsonKey(name: "id") IdModel? id});

  $IdModelCopyWith<$Res>? get id;
}

/// @nodoc
class _$VerseTafsirModelCopyWithImpl<$Res, $Val extends VerseTafsirModel>
    implements $VerseTafsirModelCopyWith<$Res> {
  _$VerseTafsirModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdModelCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $IdModelCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerseTafsirModelImplCopyWith<$Res>
    implements $VerseTafsirModelCopyWith<$Res> {
  factory _$$VerseTafsirModelImplCopyWith(_$VerseTafsirModelImpl value,
          $Res Function(_$VerseTafsirModelImpl) then) =
      __$$VerseTafsirModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") IdModel? id});

  @override
  $IdModelCopyWith<$Res>? get id;
}

/// @nodoc
class __$$VerseTafsirModelImplCopyWithImpl<$Res>
    extends _$VerseTafsirModelCopyWithImpl<$Res, _$VerseTafsirModelImpl>
    implements _$$VerseTafsirModelImplCopyWith<$Res> {
  __$$VerseTafsirModelImplCopyWithImpl(_$VerseTafsirModelImpl _value,
      $Res Function(_$VerseTafsirModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$VerseTafsirModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VerseTafsirModelImpl implements _VerseTafsirModel {
  const _$VerseTafsirModelImpl({@JsonKey(name: "id") this.id});

  factory _$VerseTafsirModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerseTafsirModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final IdModel? id;

  @override
  String toString() {
    return 'VerseTafsirModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerseTafsirModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerseTafsirModelImplCopyWith<_$VerseTafsirModelImpl> get copyWith =>
      __$$VerseTafsirModelImplCopyWithImpl<_$VerseTafsirModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerseTafsirModelImplToJson(
      this,
    );
  }
}

abstract class _VerseTafsirModel implements VerseTafsirModel {
  const factory _VerseTafsirModel({@JsonKey(name: "id") final IdModel? id}) =
      _$VerseTafsirModelImpl;

  factory _VerseTafsirModel.fromJson(Map<String, dynamic> json) =
      _$VerseTafsirModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  IdModel? get id;
  @override
  @JsonKey(ignore: true)
  _$$VerseTafsirModelImplCopyWith<_$VerseTafsirModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdModel _$IdModelFromJson(Map<String, dynamic> json) {
  return _IdModel.fromJson(json);
}

/// @nodoc
mixin _$IdModel {
  @JsonKey(name: "short")
  String? get short => throw _privateConstructorUsedError;
  @JsonKey(name: "long")
  String? get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdModelCopyWith<IdModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdModelCopyWith<$Res> {
  factory $IdModelCopyWith(IdModel value, $Res Function(IdModel) then) =
      _$IdModelCopyWithImpl<$Res, IdModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "short") String? short,
      @JsonKey(name: "long") String? long});
}

/// @nodoc
class _$IdModelCopyWithImpl<$Res, $Val extends IdModel>
    implements $IdModelCopyWith<$Res> {
  _$IdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = freezed,
    Object? long = freezed,
  }) {
    return _then(_value.copyWith(
      short: freezed == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdModelImplCopyWith<$Res> implements $IdModelCopyWith<$Res> {
  factory _$$IdModelImplCopyWith(
          _$IdModelImpl value, $Res Function(_$IdModelImpl) then) =
      __$$IdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "short") String? short,
      @JsonKey(name: "long") String? long});
}

/// @nodoc
class __$$IdModelImplCopyWithImpl<$Res>
    extends _$IdModelCopyWithImpl<$Res, _$IdModelImpl>
    implements _$$IdModelImplCopyWith<$Res> {
  __$$IdModelImplCopyWithImpl(
      _$IdModelImpl _value, $Res Function(_$IdModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = freezed,
    Object? long = freezed,
  }) {
    return _then(_$IdModelImpl(
      short: freezed == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdModelImpl implements _IdModel {
  const _$IdModelImpl(
      {@JsonKey(name: "short") this.short, @JsonKey(name: "long") this.long});

  factory _$IdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdModelImplFromJson(json);

  @override
  @JsonKey(name: "short")
  final String? short;
  @override
  @JsonKey(name: "long")
  final String? long;

  @override
  String toString() {
    return 'IdModel(short: $short, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdModelImpl &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, short, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdModelImplCopyWith<_$IdModelImpl> get copyWith =>
      __$$IdModelImplCopyWithImpl<_$IdModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdModelImplToJson(
      this,
    );
  }
}

abstract class _IdModel implements IdModel {
  const factory _IdModel(
      {@JsonKey(name: "short") final String? short,
      @JsonKey(name: "long") final String? long}) = _$IdModelImpl;

  factory _IdModel.fromJson(Map<String, dynamic> json) = _$IdModelImpl.fromJson;

  @override
  @JsonKey(name: "short")
  String? get short;
  @override
  @JsonKey(name: "long")
  String? get long;
  @override
  @JsonKey(ignore: true)
  _$$IdModelImplCopyWith<_$IdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
