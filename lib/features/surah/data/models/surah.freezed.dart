// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Surah _$SurahFromJson(Map<String, dynamic> json) {
  return _Surah.fromJson(json);
}

/// @nodoc
mixin _$Surah {
  @JsonKey(name: "number")
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "sequence")
  int? get sequence => throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfVerses")
  int? get numberOfVerses => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  Name? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "revelation")
  Revelation? get revelation => throw _privateConstructorUsedError;
  @JsonKey(name: "tafsir")
  Tafsir? get tafsir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahCopyWith<Surah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahCopyWith<$Res> {
  factory $SurahCopyWith(Surah value, $Res Function(Surah) then) =
      _$SurahCopyWithImpl<$Res, Surah>;
  @useResult
  $Res call(
      {@JsonKey(name: "number") int? number,
      @JsonKey(name: "sequence") int? sequence,
      @JsonKey(name: "numberOfVerses") int? numberOfVerses,
      @JsonKey(name: "name") Name? name,
      @JsonKey(name: "revelation") Revelation? revelation,
      @JsonKey(name: "tafsir") Tafsir? tafsir});

  $NameCopyWith<$Res>? get name;
  $RevelationCopyWith<$Res>? get revelation;
  $TafsirCopyWith<$Res>? get tafsir;
}

/// @nodoc
class _$SurahCopyWithImpl<$Res, $Val extends Surah>
    implements $SurahCopyWith<$Res> {
  _$SurahCopyWithImpl(this._value, this._then);

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
              as Name?,
      revelation: freezed == revelation
          ? _value.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as Revelation?,
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as Tafsir?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RevelationCopyWith<$Res>? get revelation {
    if (_value.revelation == null) {
      return null;
    }

    return $RevelationCopyWith<$Res>(_value.revelation!, (value) {
      return _then(_value.copyWith(revelation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TafsirCopyWith<$Res>? get tafsir {
    if (_value.tafsir == null) {
      return null;
    }

    return $TafsirCopyWith<$Res>(_value.tafsir!, (value) {
      return _then(_value.copyWith(tafsir: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurahImplCopyWith<$Res> implements $SurahCopyWith<$Res> {
  factory _$$SurahImplCopyWith(
          _$SurahImpl value, $Res Function(_$SurahImpl) then) =
      __$$SurahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "number") int? number,
      @JsonKey(name: "sequence") int? sequence,
      @JsonKey(name: "numberOfVerses") int? numberOfVerses,
      @JsonKey(name: "name") Name? name,
      @JsonKey(name: "revelation") Revelation? revelation,
      @JsonKey(name: "tafsir") Tafsir? tafsir});

  @override
  $NameCopyWith<$Res>? get name;
  @override
  $RevelationCopyWith<$Res>? get revelation;
  @override
  $TafsirCopyWith<$Res>? get tafsir;
}

/// @nodoc
class __$$SurahImplCopyWithImpl<$Res>
    extends _$SurahCopyWithImpl<$Res, _$SurahImpl>
    implements _$$SurahImplCopyWith<$Res> {
  __$$SurahImplCopyWithImpl(
      _$SurahImpl _value, $Res Function(_$SurahImpl) _then)
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
  }) {
    return _then(_$SurahImpl(
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
              as Name?,
      revelation: freezed == revelation
          ? _value.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as Revelation?,
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as Tafsir?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SurahImpl implements _Surah {
  const _$SurahImpl(
      {@JsonKey(name: "number") this.number,
      @JsonKey(name: "sequence") this.sequence,
      @JsonKey(name: "numberOfVerses") this.numberOfVerses,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "revelation") required this.revelation,
      @JsonKey(name: "tafsir") required this.tafsir});

  factory _$SurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahImplFromJson(json);

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
  final Name? name;
  @override
  @JsonKey(name: "revelation")
  final Revelation? revelation;
  @override
  @JsonKey(name: "tafsir")
  final Tafsir? tafsir;

  @override
  String toString() {
    return 'Surah(number: $number, sequence: $sequence, numberOfVerses: $numberOfVerses, name: $name, revelation: $revelation, tafsir: $tafsir)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.numberOfVerses, numberOfVerses) ||
                other.numberOfVerses == numberOfVerses) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.revelation, revelation) ||
                other.revelation == revelation) &&
            (identical(other.tafsir, tafsir) || other.tafsir == tafsir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, number, sequence, numberOfVerses, name, revelation, tafsir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahImplCopyWith<_$SurahImpl> get copyWith =>
      __$$SurahImplCopyWithImpl<_$SurahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahImplToJson(
      this,
    );
  }
}

abstract class _Surah implements Surah {
  const factory _Surah(
      {@JsonKey(name: "number") final int? number,
      @JsonKey(name: "sequence") final int? sequence,
      @JsonKey(name: "numberOfVerses") final int? numberOfVerses,
      @JsonKey(name: "name") required final Name? name,
      @JsonKey(name: "revelation") required final Revelation? revelation,
      @JsonKey(name: "tafsir") required final Tafsir? tafsir}) = _$SurahImpl;

  factory _Surah.fromJson(Map<String, dynamic> json) = _$SurahImpl.fromJson;

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
  Name? get name;
  @override
  @JsonKey(name: "revelation")
  Revelation? get revelation;
  @override
  @JsonKey(name: "tafsir")
  Tafsir? get tafsir;
  @override
  @JsonKey(ignore: true)
  _$$SurahImplCopyWith<_$SurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  @JsonKey(name: "short")
  String? get short => throw _privateConstructorUsedError;
  @JsonKey(name: "long")
  String? get long => throw _privateConstructorUsedError;
  @JsonKey(name: "transliteration")
  Translation? get transliteration => throw _privateConstructorUsedError;
  @JsonKey(name: "translation")
  Translation? get translation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res, Name>;
  @useResult
  $Res call(
      {@JsonKey(name: "short") String? short,
      @JsonKey(name: "long") String? long,
      @JsonKey(name: "transliteration") Translation? transliteration,
      @JsonKey(name: "translation") Translation? translation});

  $TranslationCopyWith<$Res>? get transliteration;
  $TranslationCopyWith<$Res>? get translation;
}

/// @nodoc
class _$NameCopyWithImpl<$Res, $Val extends Name>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

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
              as Translation?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Translation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationCopyWith<$Res>? get transliteration {
    if (_value.transliteration == null) {
      return null;
    }

    return $TranslationCopyWith<$Res>(_value.transliteration!, (value) {
      return _then(_value.copyWith(transliteration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationCopyWith<$Res>? get translation {
    if (_value.translation == null) {
      return null;
    }

    return $TranslationCopyWith<$Res>(_value.translation!, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NameImplCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$NameImplCopyWith(
          _$NameImpl value, $Res Function(_$NameImpl) then) =
      __$$NameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "short") String? short,
      @JsonKey(name: "long") String? long,
      @JsonKey(name: "transliteration") Translation? transliteration,
      @JsonKey(name: "translation") Translation? translation});

  @override
  $TranslationCopyWith<$Res>? get transliteration;
  @override
  $TranslationCopyWith<$Res>? get translation;
}

/// @nodoc
class __$$NameImplCopyWithImpl<$Res>
    extends _$NameCopyWithImpl<$Res, _$NameImpl>
    implements _$$NameImplCopyWith<$Res> {
  __$$NameImplCopyWithImpl(_$NameImpl _value, $Res Function(_$NameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = freezed,
    Object? long = freezed,
    Object? transliteration = freezed,
    Object? translation = freezed,
  }) {
    return _then(_$NameImpl(
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
              as Translation?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Translation?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NameImpl implements _Name {
  const _$NameImpl(
      {@JsonKey(name: "short") required this.short,
      @JsonKey(name: "long") required this.long,
      @JsonKey(name: "transliteration") required this.transliteration,
      @JsonKey(name: "translation") required this.translation});

  factory _$NameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameImplFromJson(json);

  @override
  @JsonKey(name: "short")
  final String? short;
  @override
  @JsonKey(name: "long")
  final String? long;
  @override
  @JsonKey(name: "transliteration")
  final Translation? transliteration;
  @override
  @JsonKey(name: "translation")
  final Translation? translation;

  @override
  String toString() {
    return 'Name(short: $short, long: $long, transliteration: $transliteration, translation: $translation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameImpl &&
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
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      __$$NameImplCopyWithImpl<_$NameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameImplToJson(
      this,
    );
  }
}

abstract class _Name implements Name {
  const factory _Name(
      {@JsonKey(name: "short") required final String? short,
      @JsonKey(name: "long") required final String? long,
      @JsonKey(name: "transliteration")
      required final Translation? transliteration,
      @JsonKey(name: "translation")
      required final Translation? translation}) = _$NameImpl;

  factory _Name.fromJson(Map<String, dynamic> json) = _$NameImpl.fromJson;

  @override
  @JsonKey(name: "short")
  String? get short;
  @override
  @JsonKey(name: "long")
  String? get long;
  @override
  @JsonKey(name: "transliteration")
  Translation? get transliteration;
  @override
  @JsonKey(name: "translation")
  Translation? get translation;
  @override
  @JsonKey(ignore: true)
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Translation _$TranslationFromJson(Map<String, dynamic> json) {
  return _Translation.fromJson(json);
}

/// @nodoc
mixin _$Translation {
  @JsonKey(name: "en")
  String? get en => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationCopyWith<Translation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationCopyWith<$Res> {
  factory $TranslationCopyWith(
          Translation value, $Res Function(Translation) then) =
      _$TranslationCopyWithImpl<$Res, Translation>;
  @useResult
  $Res call({@JsonKey(name: "en") String? en, @JsonKey(name: "id") String? id});
}

/// @nodoc
class _$TranslationCopyWithImpl<$Res, $Val extends Translation>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._value, this._then);

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
abstract class _$$TranslationImplCopyWith<$Res>
    implements $TranslationCopyWith<$Res> {
  factory _$$TranslationImplCopyWith(
          _$TranslationImpl value, $Res Function(_$TranslationImpl) then) =
      __$$TranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "en") String? en, @JsonKey(name: "id") String? id});
}

/// @nodoc
class __$$TranslationImplCopyWithImpl<$Res>
    extends _$TranslationCopyWithImpl<$Res, _$TranslationImpl>
    implements _$$TranslationImplCopyWith<$Res> {
  __$$TranslationImplCopyWithImpl(
      _$TranslationImpl _value, $Res Function(_$TranslationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? id = freezed,
  }) {
    return _then(_$TranslationImpl(
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
class _$TranslationImpl implements _Translation {
  const _$TranslationImpl(
      {@JsonKey(name: "en") required this.en,
      @JsonKey(name: "id") required this.id});

  factory _$TranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationImplFromJson(json);

  @override
  @JsonKey(name: "en")
  final String? en;
  @override
  @JsonKey(name: "id")
  final String? id;

  @override
  String toString() {
    return 'Translation(en: $en, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      __$$TranslationImplCopyWithImpl<_$TranslationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationImplToJson(
      this,
    );
  }
}

abstract class _Translation implements Translation {
  const factory _Translation(
      {@JsonKey(name: "en") required final String? en,
      @JsonKey(name: "id") required final String? id}) = _$TranslationImpl;

  factory _Translation.fromJson(Map<String, dynamic> json) =
      _$TranslationImpl.fromJson;

  @override
  @JsonKey(name: "en")
  String? get en;
  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$TranslationImplCopyWith<_$TranslationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Revelation _$RevelationFromJson(Map<String, dynamic> json) {
  return _Revelation.fromJson(json);
}

/// @nodoc
mixin _$Revelation {
  @JsonKey(name: "arab")
  String? get arab => throw _privateConstructorUsedError;
  @JsonKey(name: "en")
  String? get en => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RevelationCopyWith<Revelation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevelationCopyWith<$Res> {
  factory $RevelationCopyWith(
          Revelation value, $Res Function(Revelation) then) =
      _$RevelationCopyWithImpl<$Res, Revelation>;
  @useResult
  $Res call(
      {@JsonKey(name: "arab") String? arab,
      @JsonKey(name: "en") String? en,
      @JsonKey(name: "id") String? id});
}

/// @nodoc
class _$RevelationCopyWithImpl<$Res, $Val extends Revelation>
    implements $RevelationCopyWith<$Res> {
  _$RevelationCopyWithImpl(this._value, this._then);

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
abstract class _$$RevelationImplCopyWith<$Res>
    implements $RevelationCopyWith<$Res> {
  factory _$$RevelationImplCopyWith(
          _$RevelationImpl value, $Res Function(_$RevelationImpl) then) =
      __$$RevelationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "arab") String? arab,
      @JsonKey(name: "en") String? en,
      @JsonKey(name: "id") String? id});
}

/// @nodoc
class __$$RevelationImplCopyWithImpl<$Res>
    extends _$RevelationCopyWithImpl<$Res, _$RevelationImpl>
    implements _$$RevelationImplCopyWith<$Res> {
  __$$RevelationImplCopyWithImpl(
      _$RevelationImpl _value, $Res Function(_$RevelationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = freezed,
    Object? en = freezed,
    Object? id = freezed,
  }) {
    return _then(_$RevelationImpl(
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
class _$RevelationImpl implements _Revelation {
  const _$RevelationImpl(
      {@JsonKey(name: "arab") required this.arab,
      @JsonKey(name: "en") required this.en,
      @JsonKey(name: "id") required this.id});

  factory _$RevelationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevelationImplFromJson(json);

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
    return 'Revelation(arab: $arab, en: $en, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevelationImpl &&
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
  _$$RevelationImplCopyWith<_$RevelationImpl> get copyWith =>
      __$$RevelationImplCopyWithImpl<_$RevelationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevelationImplToJson(
      this,
    );
  }
}

abstract class _Revelation implements Revelation {
  const factory _Revelation(
      {@JsonKey(name: "arab") required final String? arab,
      @JsonKey(name: "en") required final String? en,
      @JsonKey(name: "id") required final String? id}) = _$RevelationImpl;

  factory _Revelation.fromJson(Map<String, dynamic> json) =
      _$RevelationImpl.fromJson;

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
  _$$RevelationImplCopyWith<_$RevelationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tafsir _$TafsirFromJson(Map<String, dynamic> json) {
  return _Tafsir.fromJson(json);
}

/// @nodoc
mixin _$Tafsir {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TafsirCopyWith<Tafsir> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TafsirCopyWith<$Res> {
  factory $TafsirCopyWith(Tafsir value, $Res Function(Tafsir) then) =
      _$TafsirCopyWithImpl<$Res, Tafsir>;
  @useResult
  $Res call({@JsonKey(name: "id") String? id});
}

/// @nodoc
class _$TafsirCopyWithImpl<$Res, $Val extends Tafsir>
    implements $TafsirCopyWith<$Res> {
  _$TafsirCopyWithImpl(this._value, this._then);

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
abstract class _$$TafsirImplCopyWith<$Res> implements $TafsirCopyWith<$Res> {
  factory _$$TafsirImplCopyWith(
          _$TafsirImpl value, $Res Function(_$TafsirImpl) then) =
      __$$TafsirImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") String? id});
}

/// @nodoc
class __$$TafsirImplCopyWithImpl<$Res>
    extends _$TafsirCopyWithImpl<$Res, _$TafsirImpl>
    implements _$$TafsirImplCopyWith<$Res> {
  __$$TafsirImplCopyWithImpl(
      _$TafsirImpl _value, $Res Function(_$TafsirImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$TafsirImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TafsirImpl implements _Tafsir {
  const _$TafsirImpl({@JsonKey(name: "id") required this.id});

  factory _$TafsirImpl.fromJson(Map<String, dynamic> json) =>
      _$$TafsirImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;

  @override
  String toString() {
    return 'Tafsir(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TafsirImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TafsirImplCopyWith<_$TafsirImpl> get copyWith =>
      __$$TafsirImplCopyWithImpl<_$TafsirImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TafsirImplToJson(
      this,
    );
  }
}

abstract class _Tafsir implements Tafsir {
  const factory _Tafsir({@JsonKey(name: "id") required final String? id}) =
      _$TafsirImpl;

  factory _Tafsir.fromJson(Map<String, dynamic> json) = _$TafsirImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$TafsirImplCopyWith<_$TafsirImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
