import 'package:freezed_annotation/freezed_annotation.dart';

import '../data.dart';

part 'surah_detail_res_model.freezed.dart';
part 'surah_detail_res_model.g.dart';

@freezed
class SurahDetailResModel with _$SurahDetailResModel {
  @JsonSerializable(explicitToJson: true)
  const factory SurahDetailResModel({
    @JsonKey(name: "code") required int? code,
    @JsonKey(name: "status") required String? status,
    @JsonKey(name: "message") required String? message,
    @JsonKey(name: "data") required SurahDetailModel? data,
  }) = _SurahDetailResModel;

  factory SurahDetailResModel.fromJson(Map<String, dynamic> json) =>
      _$SurahDetailResModelFromJson(json);
}
