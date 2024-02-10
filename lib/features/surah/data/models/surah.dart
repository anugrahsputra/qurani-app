import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.freezed.dart';
part 'surah.g.dart';

@freezed
class Surah with _$Surah {
  @JsonSerializable(explicitToJson: true)
  const factory Surah({
    @JsonKey(name: "number") @Default(0) int number,
    @JsonKey(name: "sequence") @Default(0) int sequence,
    @JsonKey(name: "numberOfVerses") @Default(0) int numberOfVerses,
    @JsonKey(name: "name") required Name name,
    @JsonKey(name: "revelation") required Revelation revelation,
    @JsonKey(name: "tafsir") required Tafsir tafsir,
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}

@freezed
class Name with _$Name {
  @JsonSerializable(explicitToJson: true)
  const factory Name({
    @JsonKey(name: "short") required String short,
    @JsonKey(name: "long") required String long,
    @JsonKey(name: "transliteration") required Translation transliteration,
    @JsonKey(name: "translation") required Translation translation,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class Translation with _$Translation {
  const factory Translation({
    @JsonKey(name: "en") required String en,
    @JsonKey(name: "id") required String id,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}

@freezed
class Revelation with _$Revelation {
  const factory Revelation({
    @JsonKey(name: "arab") required String arab,
    @JsonKey(name: "en") required String en,
    @JsonKey(name: "id") required String id,
  }) = _Revelation;

  factory Revelation.fromJson(Map<String, dynamic> json) =>
      _$RevelationFromJson(json);
}

@freezed
class Tafsir with _$Tafsir {
  const factory Tafsir({
    @JsonKey(name: "id") required String id,
  }) = _Tafsir;

  factory Tafsir.fromJson(Map<String, dynamic> json) => _$TafsirFromJson(json);
}
