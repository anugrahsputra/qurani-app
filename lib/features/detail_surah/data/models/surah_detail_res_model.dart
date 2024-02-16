import 'package:freezed_annotation/freezed_annotation.dart';

import '../data.dart';

part 'surah_detail_res_model.freezed.dart';
part 'surah_detail_res_model.g.dart';

@freezed
class SurahDetailRes with _$SurahDetailRes {
  @JsonSerializable(explicitToJson: true)
  const factory SurahDetailRes({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required SurahDetailModel data,
  }) = _SurahDetailRes;

  factory SurahDetailRes.fromJson(Map<String, dynamic> json) =>
      _$SurahDetailResFromJson(json);
}
