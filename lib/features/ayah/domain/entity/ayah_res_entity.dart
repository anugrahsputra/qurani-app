import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayah_res_entity.freezed.dart';

@freezed
class AyahRes with _$AyahRes {
  const factory AyahRes({
    required int code,
    required String status,
    required String message,
    required Ayah data,
  }) = _AyahRes;
}

@freezed
class Ayah with _$Ayah {
  const factory Ayah({
    required NumberAyah number,
    required MetaAyah meta,
    required TextAyah text,
    required TranslationAyah translation,
    required AudioAyah audio,
    required TafsirAyah tafsir,
    required SurahAyah surah,
  }) = _Ayah;
}

@freezed
class AudioAyah with _$AudioAyah {
  const factory AudioAyah({
    required String primary,
    required List<String> secondary,
  }) = _AudioAyah;
}

@freezed
class MetaAyah with _$MetaAyah {
  const factory MetaAyah({
    required int juz,
    required int page,
    required int manzil,
    required int ruku,
    required int hizbQuarter,
    required SajdaAyah sajda,
  }) = _MetaAyah;
}

@freezed
class SajdaAyah with _$SajdaAyah {
  const factory SajdaAyah({
    required bool recommended,
    required bool obligatory,
  }) = _SajdaAyah;
}

@freezed
class NumberAyah with _$NumberAyah {
  const factory NumberAyah({
    required int inQuran,
    required int inSurah,
  }) = _NumberAyah;
}

@freezed
class SurahAyah with _$SurahAyah {
  const factory SurahAyah({
    required int number,
    required int sequence,
    required int numberOfVerses,
    required NameAyah name,
    required RevelationAyah revelation,
    required SurahAyahTafsir tafsir,
    required PreBismillahAyah? preBismillah,
  }) = _SurahAyah;
}

@freezed
class NameAyah with _$NameAyah {
  const factory NameAyah({
    required String short,
    required String long,
    required TranslationAyah transliteration,
    required TranslationAyah translation,
  }) = _NameAyah;
}

@freezed
class TranslationAyah with _$TranslationAyah {
  const factory TranslationAyah({
    required String en,
    required String id,
  }) = _TranslationAyah;
}

@freezed
class PreBismillahAyah with _$PreBismillahAyah {
  const factory PreBismillahAyah({
    required TextAyah text,
    required TranslationAyah translation,
    required AudioAyah audio,
  }) = _PreBismillahAyah;
}

@freezed
class TextAyah with _$TextAyah {
  const factory TextAyah({
    required String arab,
    required TransliterationAyah transliteration,
  }) = _TextAyah;
}

@freezed
class TransliterationAyah with _$TransliterationAyah {
  const factory TransliterationAyah({
    required String en,
  }) = _TransliterationAyah;
}

@freezed
class RevelationAyah with _$RevelationAyah {
  const factory RevelationAyah({
    required String arab,
    required String en,
    required String id,
  }) = _RevelationAyah;
}

@freezed
class SurahAyahTafsir with _$SurahAyahTafsir {
  const factory SurahAyahTafsir({
    required String id,
  }) = _SurahAyahTafsir;
}

@freezed
class TafsirAyah with _$TafsirAyah {
  const factory TafsirAyah({
    required IdAyah id,
  }) = _TafsirAyah;
}

@freezed
class IdAyah with _$IdAyah {
  const factory IdAyah({
    required String short,
    required String long,
  }) = _IdAyah;
}
