import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'surah_res.freezed.dart';
part 'surah_res.g.dart';

@freezed
class SurahRes with _$SurahRes {
  @JsonSerializable(explicitToJson: true)
  const factory SurahRes({
    @JsonKey(name: "code") @Default(0) int code,
    @JsonKey(name: "status") @Default("") String status,
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "data") @Default([]) List<Surah> data,
  }) = _SurahRes;

  factory SurahRes.fromJson(Map<String, dynamic> json) =>
      _$SurahResFromJson(json);
}
