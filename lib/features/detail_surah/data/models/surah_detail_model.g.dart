// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahDetailModelImpl _$$SurahDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SurahDetailModelImpl(
      number: json['number'] as int?,
      sequence: json['sequence'] as int?,
      numberOfVerses: json['numberOfVerses'] as int?,
      name: json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      revelation: json['revelation'] == null
          ? null
          : RevelationModel.fromJson(
              json['revelation'] as Map<String, dynamic>),
      tafsir: json['tafsir'] == null
          ? null
          : TafsirModel.fromJson(json['tafsir'] as Map<String, dynamic>),
      preBismillah: json['preBismillah'] == null
          ? null
          : PreBismillahModel.fromJson(
              json['preBismillah'] as Map<String, dynamic>),
      verses: (json['verses'] as List<dynamic>?)
          ?.map((e) => VerseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurahDetailModelImplToJson(
        _$SurahDetailModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'sequence': instance.sequence,
      'numberOfVerses': instance.numberOfVerses,
      'name': instance.name?.toJson(),
      'revelation': instance.revelation?.toJson(),
      'tafsir': instance.tafsir?.toJson(),
      'preBismillah': instance.preBismillah?.toJson(),
      'verses': instance.verses?.map((e) => e.toJson()).toList(),
    };

_$NameModelImpl _$$NameModelImplFromJson(Map<String, dynamic> json) =>
    _$NameModelImpl(
      short: json['short'] as String?,
      long: json['long'] as String?,
      transliteration: json['transliteration'] == null
          ? null
          : TranslationModel.fromJson(
              json['transliteration'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : TranslationModel.fromJson(
              json['translation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NameModelImplToJson(_$NameModelImpl instance) =>
    <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
      'transliteration': instance.transliteration?.toJson(),
      'translation': instance.translation?.toJson(),
    };

_$TranslationModelImpl _$$TranslationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TranslationModelImpl(
      en: json['en'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$TranslationModelImplToJson(
        _$TranslationModelImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'id': instance.id,
    };

_$PreBismillahModelImpl _$$PreBismillahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PreBismillahModelImpl(
      text: json['text'] == null
          ? null
          : TextModel.fromJson(json['text'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : TranslationModel.fromJson(
              json['translation'] as Map<String, dynamic>),
      audio: json['audio'] == null
          ? null
          : AudioModel.fromJson(json['audio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PreBismillahModelImplToJson(
        _$PreBismillahModelImpl instance) =>
    <String, dynamic>{
      'text': instance.text?.toJson(),
      'translation': instance.translation?.toJson(),
      'audio': instance.audio?.toJson(),
    };

_$AudioModelImpl _$$AudioModelImplFromJson(Map<String, dynamic> json) =>
    _$AudioModelImpl(
      primary: json['primary'] as String?,
      secondary: (json['secondary'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AudioModelImplToJson(_$AudioModelImpl instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
    };

_$TextModelImpl _$$TextModelImplFromJson(Map<String, dynamic> json) =>
    _$TextModelImpl(
      arab: json['arab'] as String?,
      transliteration: json['transliteration'] == null
          ? null
          : TranslationModel.fromJson(
              json['transliteration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TextModelImplToJson(_$TextModelImpl instance) =>
    <String, dynamic>{
      'arab': instance.arab,
      'transliteration': instance.transliteration?.toJson(),
    };

_$RevelationModelImpl _$$RevelationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RevelationModelImpl(
      arab: json['arab'] as String?,
      en: json['en'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$RevelationModelImplToJson(
        _$RevelationModelImpl instance) =>
    <String, dynamic>{
      'arab': instance.arab,
      'en': instance.en,
      'id': instance.id,
    };

_$TafsirModelImpl _$$TafsirModelImplFromJson(Map<String, dynamic> json) =>
    _$TafsirModelImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$TafsirModelImplToJson(_$TafsirModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$VerseModelImpl _$$VerseModelImplFromJson(Map<String, dynamic> json) =>
    _$VerseModelImpl(
      number: json['number'] == null
          ? null
          : NumberModel.fromJson(json['number'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : TextModel.fromJson(json['text'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : TranslationModel.fromJson(
              json['translation'] as Map<String, dynamic>),
      audio: json['audio'] == null
          ? null
          : AudioModel.fromJson(json['audio'] as Map<String, dynamic>),
      tafsir: json['tafsir'] == null
          ? null
          : VerseTafsirModel.fromJson(json['tafsir'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerseModelImplToJson(_$VerseModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number?.toJson(),
      'meta': instance.meta?.toJson(),
      'text': instance.text?.toJson(),
      'translation': instance.translation?.toJson(),
      'audio': instance.audio?.toJson(),
      'tafsir': instance.tafsir?.toJson(),
    };

_$MetaModelImpl _$$MetaModelImplFromJson(Map<String, dynamic> json) =>
    _$MetaModelImpl(
      juz: json['juz'] as int?,
      page: json['page'] as int?,
      manzil: json['manzil'] as int?,
      ruku: json['ruku'] as int?,
      hizbQuarter: json['hizbQuarter'] as int?,
      sajda: json['sajda'] == null
          ? null
          : SajdaModel.fromJson(json['sajda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetaModelImplToJson(_$MetaModelImpl instance) =>
    <String, dynamic>{
      'juz': instance.juz,
      'page': instance.page,
      'manzil': instance.manzil,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda?.toJson(),
    };

_$SajdaModelImpl _$$SajdaModelImplFromJson(Map<String, dynamic> json) =>
    _$SajdaModelImpl(
      recommended: json['recommended'] as bool?,
      obligatory: json['obligatory'] as bool?,
    );

Map<String, dynamic> _$$SajdaModelImplToJson(_$SajdaModelImpl instance) =>
    <String, dynamic>{
      'recommended': instance.recommended,
      'obligatory': instance.obligatory,
    };

_$NumberModelImpl _$$NumberModelImplFromJson(Map<String, dynamic> json) =>
    _$NumberModelImpl(
      inQuran: json['inQuran'] as int?,
      inSurah: json['inSurah'] as int?,
    );

Map<String, dynamic> _$$NumberModelImplToJson(_$NumberModelImpl instance) =>
    <String, dynamic>{
      'inQuran': instance.inQuran,
      'inSurah': instance.inSurah,
    };

_$VerseTafsirModelImpl _$$VerseTafsirModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerseTafsirModelImpl(
      id: json['id'] == null
          ? null
          : IdModel.fromJson(json['id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerseTafsirModelImplToJson(
        _$VerseTafsirModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
    };

_$IdModelImpl _$$IdModelImplFromJson(Map<String, dynamic> json) =>
    _$IdModelImpl(
      short: json['short'] as String?,
      long: json['long'] as String?,
    );

Map<String, dynamic> _$$IdModelImplToJson(_$IdModelImpl instance) =>
    <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
    };
