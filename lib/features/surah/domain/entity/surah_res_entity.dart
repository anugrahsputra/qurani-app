import 'package:freezed_annotation/freezed_annotation.dart';

import 'entity.dart';

part 'surah_res_entity.freezed.dart';

@freezed
abstract class SurahResEntity with _$SurahResEntity {
  const factory SurahResEntity({
    required int code,
    required String status,
    required String message,
    required List<SurahEntity> data,
  }) = _SurahResEntity;
}
