import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain.dart';

part 'surah_detail_res_entity.freezed.dart';

@freezed
class SurahDetailRes with _$SurahDetailRes {
  const factory SurahDetailRes({
    int? code,
    String? status,
    String? message,
    SurahDetail? data,
  }) = _SurahDetailRes;
}
