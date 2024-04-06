// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyahResModelImpl _$$AyahResModelImplFromJson(Map<String, dynamic> json) =>
    _$AyahResModelImpl(
      code: json['code'] as int,
      status: json['status'] as String,
      message: json['message'] as String,
      data: AyahModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AyahResModelImplToJson(_$AyahResModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data.toJson(),
    };

_$AyahModelImpl _$$AyahModelImplFromJson(Map<String, dynamic> json) =>
    _$AyahModelImpl(
      number: NumberAyahModel.fromJson(json['number'] as Map<String, dynamic>),
      meta: MetaAyahModel.fromJson(json['meta'] as Map<String, dynamic>),
      text: TextsAyahModel.fromJson(json['text'] as Map<String, dynamic>),
      translation: TranslationAyahModel.fromJson(
          json['translation'] as Map<String, dynamic>),
      audio: AudioAyahModel.fromJson(json['audio'] as Map<String, dynamic>),
      tafsir: TafsirAyahModel.fromJson(json['tafsir'] as Map<String, dynamic>),
      surah: SurahAyahModel.fromJson(json['surah'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AyahModelImplToJson(_$AyahModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number.toJson(),
      'meta': instance.meta.toJson(),
      'text': instance.text.toJson(),
      'translation': instance.translation.toJson(),
      'audio': instance.audio.toJson(),
      'tafsir': instance.tafsir.toJson(),
      'surah': instance.surah.toJson(),
    };

_$AudioAyahModelImpl _$$AudioAyahModelImplFromJson(Map<String, dynamic> json) =>
    _$AudioAyahModelImpl(
      primary: json['primary'] as String,
      secondary:
          (json['secondary'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AudioAyahModelImplToJson(
        _$AudioAyahModelImpl instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
    };

_$MetaAyahModelImpl _$$MetaAyahModelImplFromJson(Map<String, dynamic> json) =>
    _$MetaAyahModelImpl(
      juz: json['juz'] as int,
      page: json['page'] as int,
      manzil: json['manzil'] as int,
      ruku: json['ruku'] as int,
      hizbQuarter: json['hizbQuarter'] as int,
      sajda: SajdaAyahModel.fromJson(json['sajda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetaAyahModelImplToJson(_$MetaAyahModelImpl instance) =>
    <String, dynamic>{
      'juz': instance.juz,
      'page': instance.page,
      'manzil': instance.manzil,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda.toJson(),
    };

_$SajdaAyahModelImpl _$$SajdaAyahModelImplFromJson(Map<String, dynamic> json) =>
    _$SajdaAyahModelImpl(
      recommended: json['recommended'] as bool,
      obligatory: json['obligatory'] as bool,
    );

Map<String, dynamic> _$$SajdaAyahModelImplToJson(
        _$SajdaAyahModelImpl instance) =>
    <String, dynamic>{
      'recommended': instance.recommended,
      'obligatory': instance.obligatory,
    };

_$NumberAyahModelImpl _$$NumberAyahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NumberAyahModelImpl(
      inQuran: json['inQuran'] as int,
      inSurah: json['inSurah'] as int,
    );

Map<String, dynamic> _$$NumberAyahModelImplToJson(
        _$NumberAyahModelImpl instance) =>
    <String, dynamic>{
      'inQuran': instance.inQuran,
      'inSurah': instance.inSurah,
    };

_$SurahAyahModelImpl _$$SurahAyahModelImplFromJson(Map<String, dynamic> json) =>
    _$SurahAyahModelImpl(
      number: json['number'] as int,
      sequence: json['sequence'] as int,
      numberOfVerses: json['numberOfVerses'] as int,
      name: NameAyahModel.fromJson(json['name'] as Map<String, dynamic>),
      revelation: RevelationAyahModel.fromJson(
          json['revelation'] as Map<String, dynamic>),
      tafsir:
          SurahTafsirAyahModel.fromJson(json['tafsir'] as Map<String, dynamic>),
      preBismillah: json['preBismillah'] == null
          ? null
          : PreBismillahAyahModel.fromJson(
              json['preBismillah'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SurahAyahModelImplToJson(
        _$SurahAyahModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'sequence': instance.sequence,
      'numberOfVerses': instance.numberOfVerses,
      'name': instance.name.toJson(),
      'revelation': instance.revelation.toJson(),
      'tafsir': instance.tafsir.toJson(),
      'preBismillah': instance.preBismillah?.toJson(),
    };

_$NameAyahModelImpl _$$NameAyahModelImplFromJson(Map<String, dynamic> json) =>
    _$NameAyahModelImpl(
      short: json['short'] as String,
      long: json['long'] as String,
      transliteration: TranslationAyahModel.fromJson(
          json['transliteration'] as Map<String, dynamic>),
      translation: TranslationAyahModel.fromJson(
          json['translation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NameAyahModelImplToJson(_$NameAyahModelImpl instance) =>
    <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
      'transliteration': instance.transliteration.toJson(),
      'translation': instance.translation.toJson(),
    };

_$TranslationAyahModelImpl _$$TranslationAyahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TranslationAyahModelImpl(
      en: json['en'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$TranslationAyahModelImplToJson(
        _$TranslationAyahModelImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'id': instance.id,
    };

_$PreBismillahAyahModelImpl _$$PreBismillahAyahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PreBismillahAyahModelImpl(
      text: TextsAyahModel.fromJson(json['text'] as Map<String, dynamic>),
      translation: TranslationAyahModel.fromJson(
          json['translation'] as Map<String, dynamic>),
      audio: AudioAyahModel.fromJson(json['audio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PreBismillahAyahModelImplToJson(
        _$PreBismillahAyahModelImpl instance) =>
    <String, dynamic>{
      'text': instance.text.toJson(),
      'translation': instance.translation.toJson(),
      'audio': instance.audio.toJson(),
    };

_$TextsAyahModelImpl _$$TextsAyahModelImplFromJson(Map<String, dynamic> json) =>
    _$TextsAyahModelImpl(
      arab: json['arab'] as String,
      transliteration: TransliterationAyahModel.fromJson(
          json['transliteration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TextsAyahModelImplToJson(
        _$TextsAyahModelImpl instance) =>
    <String, dynamic>{
      'arab': instance.arab,
      'transliteration': instance.transliteration.toJson(),
    };

_$TransliterationAyahModelImpl _$$TransliterationAyahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransliterationAyahModelImpl(
      en: json['en'] as String,
    );

Map<String, dynamic> _$$TransliterationAyahModelImplToJson(
        _$TransliterationAyahModelImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
    };

_$RevelationAyahModelImpl _$$RevelationAyahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RevelationAyahModelImpl(
      arab: json['arab'] as String,
      en: json['en'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$RevelationAyahModelImplToJson(
        _$RevelationAyahModelImpl instance) =>
    <String, dynamic>{
      'arab': instance.arab,
      'en': instance.en,
      'id': instance.id,
    };

_$SurahTafsirAyahModelImpl _$$SurahTafsirAyahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SurahTafsirAyahModelImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$SurahTafsirAyahModelImplToJson(
        _$SurahTafsirAyahModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$TafsirAyahModelImpl _$$TafsirAyahModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TafsirAyahModelImpl(
      id: IdAyahModel.fromJson(json['id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TafsirAyahModelImplToJson(
        _$TafsirAyahModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
    };

_$IdAyahModelImpl _$$IdAyahModelImplFromJson(Map<String, dynamic> json) =>
    _$IdAyahModelImpl(
      short: json['short'] as String,
      long: json['long'] as String,
    );

Map<String, dynamic> _$$IdAyahModelImplToJson(_$IdAyahModelImpl instance) =>
    <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
    };
