import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_detail_model.freezed.dart';
part 'surah_detail_model.g.dart';

@freezed
abstract class SurahDetailModel with _$SurahDetailModel {
  @JsonSerializable(explicitToJson: true)
  const factory SurahDetailModel({
    @JsonKey(name: "number") int? number,
    @JsonKey(name: "sequence") int? sequence,
    @JsonKey(name: "numberOfVerses") int? numberOfVerses,
    @JsonKey(name: "name") NameModel? name,
    @JsonKey(name: "revelation") RevelationModel? revelation,
    @JsonKey(name: "tafsir") TafsirModel? tafsir,
    @JsonKey(name: "preBismillah") PreBismillahModel? preBismillah,
    @JsonKey(name: "verses") List<VerseModel>? verses,
  }) = _SurahDetailModel;

  factory SurahDetailModel.fromJson(Map<String, dynamic> json) =>
      _$SurahDetailModelFromJson(json);
}

@freezed
abstract class NameModel with _$NameModel {
  @JsonSerializable(explicitToJson: true)
  const factory NameModel({
    @JsonKey(name: "short") String? short,
    @JsonKey(name: "long") String? long,
    @JsonKey(name: "transliteration") TranslationModel? transliteration,
    @JsonKey(name: "translation") TranslationModel? translation,
  }) = _NameModel;

  factory NameModel.fromJson(Map<String, dynamic> json) =>
      _$NameModelFromJson(json);
}

@freezed
abstract class TranslationModel with _$TranslationModel {
  const factory TranslationModel({
    @JsonKey(name: "en") String? en,
    @JsonKey(name: "id") String? id,
  }) = _TranslationModel;

  factory TranslationModel.fromJson(Map<String, dynamic> json) =>
      _$TranslationModelFromJson(json);
}

@freezed
abstract class PreBismillahModel with _$PreBismillahModel {
  @JsonSerializable(explicitToJson: true)
  const factory PreBismillahModel({
    @JsonKey(name: "text") TextsModel? text,
    @JsonKey(name: "translation") TranslationModel? translation,
    @JsonKey(name: "audio") AudioModel? audio,
  }) = _PreBismillahModel;

  factory PreBismillahModel.fromJson(Map<String, dynamic> json) =>
      _$PreBismillahModelFromJson(json);
}

@freezed
abstract class AudioModel with _$AudioModel {
  const factory AudioModel({
    @JsonKey(name: "primary") String? primary,
    @JsonKey(name: "secondary") List<String>? secondary,
  }) = _AudioModel;

  factory AudioModel.fromJson(Map<String, dynamic> json) =>
      _$AudioModelFromJson(json);
}

@freezed
abstract class TextsModel with _$TextsModel {
  @JsonSerializable(explicitToJson: true)
  const factory TextsModel({
    @JsonKey(name: "arab") String? arab,
    @JsonKey(name: "transliteration") TransliterationModel? transliteration,
  }) = _TextsModel;

  factory TextsModel.fromJson(Map<String, dynamic> json) =>
      _$TextsModelFromJson(json);
}

@freezed
abstract class TransliterationModel with _$TransliterationModel {
  const factory TransliterationModel({@JsonKey(name: "en") String? en}) =
      _TransliterationModel;

  factory TransliterationModel.fromJson(Map<String, dynamic> json) =>
      _$TransliterationModelFromJson(json);
}

@freezed
abstract class RevelationModel with _$RevelationModel {
  const factory RevelationModel({
    @JsonKey(name: "arab") String? arab,
    @JsonKey(name: "en") String? en,
    @JsonKey(name: "id") String? id,
  }) = _RevelationModel;

  factory RevelationModel.fromJson(Map<String, dynamic> json) =>
      _$RevelationModelFromJson(json);
}

@freezed
abstract class TafsirModel with _$TafsirModel {
  const factory TafsirModel({@JsonKey(name: "id") String? id}) = _TafsirModel;

  factory TafsirModel.fromJson(Map<String, dynamic> json) =>
      _$TafsirModelFromJson(json);
}

@freezed
abstract class VerseModel with _$VerseModel {
  @JsonSerializable(explicitToJson: true)
  const factory VerseModel({
    @JsonKey(name: "number") NumberModel? number,
    @JsonKey(name: "meta") MetaModel? meta,
    @JsonKey(name: "text") TextsModel? text,
    @JsonKey(name: "translation") TranslationModel? translation,
    @JsonKey(name: "audio") AudioModel? audio,
    @JsonKey(name: "tafsir") VerseTafsirModel? tafsir,
  }) = _VerseModel;

  factory VerseModel.fromJson(Map<String, dynamic> json) =>
      _$VerseModelFromJson(json);
}

@freezed
abstract class MetaModel with _$MetaModel {
  @JsonSerializable(explicitToJson: true)
  const factory MetaModel({
    @JsonKey(name: "juz") int? juz,
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "manzil") int? manzil,
    @JsonKey(name: "ruku") int? ruku,
    @JsonKey(name: "hizbQuarter") int? hizbQuarter,
    @JsonKey(name: "sajda") SajdaModel? sajda,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}

@freezed
abstract class SajdaModel with _$SajdaModel {
  const factory SajdaModel({
    @JsonKey(name: "recommended") bool? recommended,
    @JsonKey(name: "obligatory") bool? obligatory,
  }) = _SajdaModel;

  factory SajdaModel.fromJson(Map<String, dynamic> json) =>
      _$SajdaModelFromJson(json);
}

@freezed
abstract class NumberModel with _$NumberModel {
  const factory NumberModel({
    @JsonKey(name: "inQuran") int? inQuran,
    @JsonKey(name: "inSurah") int? inSurah,
  }) = _NumberModel;

  factory NumberModel.fromJson(Map<String, dynamic> json) =>
      _$NumberModelFromJson(json);
}

@freezed
abstract class VerseTafsirModel with _$VerseTafsirModel {
  @JsonSerializable(explicitToJson: true)
  const factory VerseTafsirModel({@JsonKey(name: "id") IdModel? id}) =
      _VerseTafsirModel;

  factory VerseTafsirModel.fromJson(Map<String, dynamic> json) =>
      _$VerseTafsirModelFromJson(json);
}

@freezed
abstract class IdModel with _$IdModel {
  const factory IdModel({
    @JsonKey(name: "short") String? short,
    @JsonKey(name: "long") String? long,
  }) = _IdModel;

  factory IdModel.fromJson(Map<String, dynamic> json) =>
      _$IdModelFromJson(json);
}
