// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahImpl _$$SurahImplFromJson(Map<String, dynamic> json) => _$SurahImpl(
      number: json['number'] as int?,
      sequence: json['sequence'] as int?,
      numberOfVerses: json['numberOfVerses'] as int?,
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      revelation: json['revelation'] == null
          ? null
          : Revelation.fromJson(json['revelation'] as Map<String, dynamic>),
      tafsir: json['tafsir'] == null
          ? null
          : Tafsir.fromJson(json['tafsir'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SurahImplToJson(_$SurahImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'sequence': instance.sequence,
      'numberOfVerses': instance.numberOfVerses,
      'name': instance.name?.toJson(),
      'revelation': instance.revelation?.toJson(),
      'tafsir': instance.tafsir?.toJson(),
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      short: json['short'] as String?,
      long: json['long'] as String?,
      transliteration: json['transliteration'] == null
          ? null
          : Translation.fromJson(
              json['transliteration'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : Translation.fromJson(json['translation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
      'transliteration': instance.transliteration?.toJson(),
      'translation': instance.translation?.toJson(),
    };

_$TranslationImpl _$$TranslationImplFromJson(Map<String, dynamic> json) =>
    _$TranslationImpl(
      en: json['en'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$TranslationImplToJson(_$TranslationImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'id': instance.id,
    };

_$RevelationImpl _$$RevelationImplFromJson(Map<String, dynamic> json) =>
    _$RevelationImpl(
      arab: json['arab'] as String?,
      en: json['en'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$RevelationImplToJson(_$RevelationImpl instance) =>
    <String, dynamic>{
      'arab': instance.arab,
      'en': instance.en,
      'id': instance.id,
    };

_$TafsirImpl _$$TafsirImplFromJson(Map<String, dynamic> json) => _$TafsirImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$TafsirImplToJson(_$TafsirImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
