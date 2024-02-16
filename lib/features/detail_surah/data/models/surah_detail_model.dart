import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_detail_model.freezed.dart';
part 'surah_detail_model.g.dart';

@freezed
class SurahDetailModel with _$SurahDetailModel {
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
class NameModel with _$NameModel {
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
class TranslationModel with _$TranslationModel {
  const factory TranslationModel({
    @JsonKey(name: "en") String? en,
    @JsonKey(name: "id") String? id,
  }) = _TranslationModel;

  factory TranslationModel.fromJson(Map<String, dynamic> json) =>
      _$TranslationModelFromJson(json);
}

@freezed
class PreBismillahModel with _$PreBismillahModel {
  @JsonSerializable(explicitToJson: true)
  const factory PreBismillahModel({
    @JsonKey(name: "text") TextModel? text,
    @JsonKey(name: "translation") TranslationModel? translation,
    @JsonKey(name: "audio") AudioModel? audio,
  }) = _PreBismillahModel;

  factory PreBismillahModel.fromJson(Map<String, dynamic> json) =>
      _$PreBismillahModelFromJson(json);
}

@freezed
class AudioModel with _$AudioModel {
  const factory AudioModel({
    @JsonKey(name: "primary") String? primary,
    @JsonKey(name: "secondary") List<String>? secondary,
  }) = _AudioModel;

  factory AudioModel.fromJson(Map<String, dynamic> json) =>
      _$AudioModelFromJson(json);
}

@freezed
class TextModel with _$TextModel {
  @JsonSerializable(explicitToJson: true)
  const factory TextModel({
    @JsonKey(name: "arab") String? arab,
    @JsonKey(name: "transliteration") TranslationModel? transliteration,
  }) = _TextModel;

  factory TextModel.fromJson(Map<String, dynamic> json) =>
      _$TextModelFromJson(json);
}

@freezed
class RevelationModel with _$RevelationModel {
  const factory RevelationModel({
    @JsonKey(name: "arab") String? arab,
    @JsonKey(name: "en") String? en,
    @JsonKey(name: "id") String? id,
  }) = _RevelationModel;

  factory RevelationModel.fromJson(Map<String, dynamic> json) =>
      _$RevelationModelFromJson(json);
}

@freezed
class TafsirModel with _$TafsirModel {
  const factory TafsirModel({
    @JsonKey(name: "id") String? id,
  }) = _TafsirModel;

  factory TafsirModel.fromJson(Map<String, dynamic> json) =>
      _$TafsirModelFromJson(json);
}

@freezed
class VerseModel with _$VerseModel {
  @JsonSerializable(explicitToJson: true)
  const factory VerseModel({
    @JsonKey(name: "number") NumberModel? number,
    @JsonKey(name: "meta") MetaModel? meta,
    @JsonKey(name: "text") TextModel? text,
    @JsonKey(name: "translation") TranslationModel? translation,
    @JsonKey(name: "audio") AudioModel? audio,
    @JsonKey(name: "tafsir") VerseTafsirModel? tafsir,
  }) = _VerseModel;

  factory VerseModel.fromJson(Map<String, dynamic> json) =>
      _$VerseModelFromJson(json);
}

@freezed
class MetaModel with _$MetaModel {
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
class SajdaModel with _$SajdaModel {
  const factory SajdaModel({
    @JsonKey(name: "recommended") required bool recommended,
    @JsonKey(name: "obligatory") required bool obligatory,
  }) = _SajdaModel;

  factory SajdaModel.fromJson(Map<String, dynamic> json) =>
      _$SajdaModelFromJson(json);
}

@freezed
class NumberModel with _$NumberModel {
  const factory NumberModel({
    @JsonKey(name: "inQuran") required int inQuran,
    @JsonKey(name: "inSurah") required int inSurah,
  }) = _NumberModel;

  factory NumberModel.fromJson(Map<String, dynamic> json) =>
      _$NumberModelFromJson(json);
}

@freezed
class VerseTafsirModel with _$VerseTafsirModel {
  @JsonSerializable(explicitToJson: true)
  const factory VerseTafsirModel({
    @JsonKey(name: "id") required IdModel id,
  }) = _VerseTafsirModel;

  factory VerseTafsirModel.fromJson(Map<String, dynamic> json) =>
      _$VerseTafsirModelFromJson(json);
}

@freezed
class IdModel with _$IdModel {
  const factory IdModel({
    @JsonKey(name: "short") required String short,
    @JsonKey(name: "long") required String long,
  }) = _IdModel;

  factory IdModel.fromJson(Map<String, dynamic> json) =>
      _$IdModelFromJson(json);
}
