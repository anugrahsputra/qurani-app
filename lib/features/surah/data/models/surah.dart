import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.freezed.dart';
part 'surah.g.dart';

@freezed
abstract class Surah with _$Surah {
  @JsonSerializable(explicitToJson: true)
  const factory Surah({
    @JsonKey(name: "number") int? number,
    @JsonKey(name: "sequence") int? sequence,
    @JsonKey(name: "numberOfVerses") int? numberOfVerses,
    @JsonKey(name: "name") required Name? name,
    @JsonKey(name: "revelation") required Revelation? revelation,
    @JsonKey(name: "tafsir") required Tafsir? tafsir,
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}

@freezed
abstract class Name with _$Name {
  @JsonSerializable(explicitToJson: true)
  const factory Name({
    @JsonKey(name: "short") required String? short,
    @JsonKey(name: "long") required String? long,
    @JsonKey(name: "transliteration") required Translation? transliteration,
    @JsonKey(name: "translation") required Translation? translation,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
abstract class Translation with _$Translation {
  const factory Translation({
    @JsonKey(name: "en") required String? en,
    @JsonKey(name: "id") required String? id,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}

@freezed
abstract class Revelation with _$Revelation {
  const factory Revelation({
    @JsonKey(name: "arab") required String? arab,
    @JsonKey(name: "en") required String? en,
    @JsonKey(name: "id") required String? id,
  }) = _Revelation;

  factory Revelation.fromJson(Map<String, dynamic> json) =>
      _$RevelationFromJson(json);
}

@freezed
abstract class Tafsir with _$Tafsir {
  const factory Tafsir({
    @JsonKey(name: "id") required String? id,
  }) = _Tafsir;

  factory Tafsir.fromJson(Map<String, dynamic> json) => _$TafsirFromJson(json);
}