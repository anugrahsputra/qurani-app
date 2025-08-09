import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_detail_entity.freezed.dart';

@freezed
abstract class SurahDetail with _$SurahDetail {
  const factory SurahDetail({
    int? number,
    int? sequence,
    int? numberOfVerses,
    Name? name,
    Revelation? revelation,
    Tafsir? tafsir,
    PreBismillah? preBismillah,
    List<Verse>? verses,
  }) = _SurahDetail;
}

@freezed
abstract class Name with _$Name {
  const factory Name({
    String? short,
    String? long,
    Translation? transliteration,
    Translation? translation,
  }) = _Name;
}

@freezed
abstract class Translation with _$Translation {
  const factory Translation({String? en, String? id}) = _Translation;
}

@freezed
abstract class PreBismillah with _$PreBismillah {
  const factory PreBismillah({
    Texts? text,
    Translation? translation,
    Audio? audio,
  }) = _PreBismillah;
}

@freezed
abstract class Audio with _$Audio {
  const factory Audio({String? primary, List<String>? secondary}) = _Audio;
}

@freezed
abstract class Texts with _$Texts {
  const factory Texts({String? arab, Transliteration? transliteration}) =
      _Texts;
}

@freezed
abstract class Transliteration with _$Transliteration {
  const factory Transliteration({String? en}) = _Transliteration;
}

@freezed
abstract class Revelation with _$Revelation {
  const factory Revelation({String? arab, String? en, String? id}) =
      _Revelation;
}

@freezed
abstract class Tafsir with _$Tafsir {
  const factory Tafsir({String? id}) = _Tafsir;
}

@freezed
abstract class Verse with _$Verse {
  const factory Verse({
    Number? number,
    Meta? meta,
    Texts? text,
    Translation? translation,
    Audio? audio,
    VerseTafsir? tafsir,
  }) = _Verse;
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    int? juz,
    int? page,
    int? manzil,
    int? ruku,
    int? hizbQuarter,
    Sajda? sajda,
  }) = _Meta;
}

@freezed
abstract class Sajda with _$Sajda {
  const factory Sajda({bool? recommended, bool? obligatory}) = _Sajda;
}

@freezed
abstract class Number with _$Number {
  const factory Number({int? inQuran, int? inSurah}) = _Number;
}

@freezed
abstract class VerseTafsir with _$VerseTafsir {
  const factory VerseTafsir({Id? id}) = _VerseTafsir;
}

@freezed
abstract class Id with _$Id {
  const factory Id({String? short, String? long}) = _Id;
}
