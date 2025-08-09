import 'package:freezed_annotation/freezed_annotation.dart';

import '../../surah.dart';

part 'surah_res.freezed.dart';
part 'surah_res.g.dart';

@freezed
abstract class SurahRes with _$SurahRes {
  @JsonSerializable(explicitToJson: true)
  const factory SurahRes({
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") List<Surah>? data,
  }) = _SurahRes;

  factory SurahRes.fromJson(Map<String, dynamic> json) =>
      _$SurahResFromJson(json);
}
