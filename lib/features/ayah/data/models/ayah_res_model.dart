import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayah_res_model.freezed.dart';
part 'ayah_res_model.g.dart';

@freezed
class AyahResModel with _$AyahResModel {
  @JsonSerializable(explicitToJson: true)
  const factory AyahResModel({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required AyahModel data,
  }) = _AyahResModel;

  factory AyahResModel.fromJson(Map<String, dynamic> json) =>
      _$AyahResModelFromJson(json);
}

@freezed
class AyahModel with _$AyahModel {
  @JsonSerializable(explicitToJson: true)
  const factory AyahModel({
    @JsonKey(name: "number") required NumberAyahModel number,
    @JsonKey(name: "meta") required MetaAyahModel meta,
    @JsonKey(name: "text") required TextsAyahModel text,
    @JsonKey(name: "translation") required TranslationAyahModel translation,
    @JsonKey(name: "audio") required AudioAyahModel audio,
    @JsonKey(name: "tafsir") required TafsirAyahModel tafsir,
    @JsonKey(name: "surah") required SurahAyahModel surah,
  }) = _AyahModel;

  factory AyahModel.fromJson(Map<String, dynamic> json) =>
      _$AyahModelFromJson(json);
}

@freezed
class AudioAyahModel with _$AudioAyahModel {
  const factory AudioAyahModel({
    @JsonKey(name: "primary") required String primary,
    @JsonKey(name: "secondary") required List<String> secondary,
  }) = _AudioAyahModel;

  factory AudioAyahModel.fromJson(Map<String, dynamic> json) =>
      _$AudioAyahModelFromJson(json);
}

@freezed
class MetaAyahModel with _$MetaAyahModel {
  @JsonSerializable(explicitToJson: true)
  const factory MetaAyahModel({
    @JsonKey(name: "juz") required int juz,
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "manzil") required int manzil,
    @JsonKey(name: "ruku") required int ruku,
    @JsonKey(name: "hizbQuarter") required int hizbQuarter,
    @JsonKey(name: "sajda") required SajdaAyahModel sajda,
  }) = _MetaAyahModel;

  factory MetaAyahModel.fromJson(Map<String, dynamic> json) =>
      _$MetaAyahModelFromJson(json);
}

@freezed
class SajdaAyahModel with _$SajdaAyahModel {
  const factory SajdaAyahModel({
    @JsonKey(name: "recommended") required bool recommended,
    @JsonKey(name: "obligatory") required bool obligatory,
  }) = _SajdaAyahModel;

  factory SajdaAyahModel.fromJson(Map<String, dynamic> json) =>
      _$SajdaAyahModelFromJson(json);
}

@freezed
class NumberAyahModel with _$NumberAyahModel {
  const factory NumberAyahModel({
    @JsonKey(name: "inQuran") required int inQuran,
    @JsonKey(name: "inSurah") required int inSurah,
  }) = _NumberAyahModel;

  factory NumberAyahModel.fromJson(Map<String, dynamic> json) =>
      _$NumberAyahModelFromJson(json);
}

@freezed
class SurahAyahModel with _$SurahAyahModel {
  @JsonSerializable(explicitToJson: true)
  const factory SurahAyahModel({
    @JsonKey(name: "number") required int number,
    @JsonKey(name: "sequence") required int sequence,
    @JsonKey(name: "numberOfVerses") required int numberOfVerses,
    @JsonKey(name: "name") required NameAyahModel name,
    @JsonKey(name: "revelation") required RevelationAyahModel revelation,
    @JsonKey(name: "tafsir") required SurahTafsirAyahModel tafsir,
    @JsonKey(name: "preBismillah") required PreBismillahAyahModel preBismillah,
  }) = _SurahAyahModel;

  factory SurahAyahModel.fromJson(Map<String, dynamic> json) =>
      _$SurahAyahModelFromJson(json);
}

@freezed
class NameAyahModel with _$NameAyahModel {
  @JsonSerializable(explicitToJson: true)
  const factory NameAyahModel({
    @JsonKey(name: "short") required String short,
    @JsonKey(name: "long") required String long,
    @JsonKey(name: "transliteration")
    required TranslationAyahModel transliteration,
    @JsonKey(name: "translation") required TranslationAyahModel translation,
  }) = _NameAyahModel;

  factory NameAyahModel.fromJson(Map<String, dynamic> json) =>
      _$NameAyahModelFromJson(json);
}

@freezed
class TranslationAyahModel with _$TranslationAyahModel {
  const factory TranslationAyahModel({
    @JsonKey(name: "en") required String en,
    @JsonKey(name: "id") required String id,
  }) = _TranslationAyahModel;

  factory TranslationAyahModel.fromJson(Map<String, dynamic> json) =>
      _$TranslationAyahModelFromJson(json);
}

@freezed
class PreBismillahAyahModel with _$PreBismillahAyahModel {
  @JsonSerializable(explicitToJson: true)
  const factory PreBismillahAyahModel({
    @JsonKey(name: "text") required TextsAyahModel text,
    @JsonKey(name: "translation") required TranslationAyahModel translation,
    @JsonKey(name: "audio") required AudioAyahModel audio,
  }) = _PreBismillahAyahModel;

  factory PreBismillahAyahModel.fromJson(Map<String, dynamic> json) =>
      _$PreBismillahAyahModelFromJson(json);
}

@freezed
class TextsAyahModel with _$TextsAyahModel {
  @JsonSerializable(explicitToJson: true)
  const factory TextsAyahModel({
    @JsonKey(name: "arab") required String arab,
    @JsonKey(name: "transliteration")
    required TransliterationAyahModel transliteration,
  }) = _TextsAyahModel;

  factory TextsAyahModel.fromJson(Map<String, dynamic> json) =>
      _$TextsAyahModelFromJson(json);
}

@freezed
class TransliterationAyahModel with _$TransliterationAyahModel {
  const factory TransliterationAyahModel({
    @JsonKey(name: "en") required String en,
  }) = _TransliterationAyahModel;

  factory TransliterationAyahModel.fromJson(Map<String, dynamic> json) =>
      _$TransliterationAyahModelFromJson(json);
}

@freezed
class RevelationAyahModel with _$RevelationAyahModel {
  const factory RevelationAyahModel({
    @JsonKey(name: "arab") required String arab,
    @JsonKey(name: "en") required String en,
    @JsonKey(name: "id") required String id,
  }) = _RevelationAyahModel;

  factory RevelationAyahModel.fromJson(Map<String, dynamic> json) =>
      _$RevelationAyahModelFromJson(json);
}

@freezed
class SurahTafsirAyahModel with _$SurahTafsirAyahModel {
  const factory SurahTafsirAyahModel({
    @JsonKey(name: "id") required String id,
  }) = _SurahTafsirAyahModel;

  factory SurahTafsirAyahModel.fromJson(Map<String, dynamic> json) =>
      _$SurahTafsirAyahModelFromJson(json);
}

@freezed
class TafsirAyahModel with _$TafsirAyahModel {
  @JsonSerializable(explicitToJson: true)
  const factory TafsirAyahModel({
    @JsonKey(name: "id") required IdAyahModel id,
  }) = _TafsirAyahModel;

  factory TafsirAyahModel.fromJson(Map<String, dynamic> json) =>
      _$TafsirAyahModelFromJson(json);
}

@freezed
class IdAyahModel with _$IdAyahModel {
  @JsonSerializable(explicitToJson: true)
  const factory IdAyahModel({
    @JsonKey(name: "short") required String short,
    @JsonKey(name: "long") required String long,
  }) = _IdAyahModel;

  factory IdAyahModel.fromJson(Map<String, dynamic> json) =>
      _$IdAyahModelFromJson(json);
}
