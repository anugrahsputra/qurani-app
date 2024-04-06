import 'package:freezed_annotation/freezed_annotation.dart';

import 'entity.dart';

part 'surah_entity.freezed.dart';

@freezed
abstract class SurahEntity with _$SurahEntity {
  const factory SurahEntity({
    required int number,
    required int sequence,
    required int numberOfVerses,
    required NameEntity name,
    required RevelationEntity revelation,
    required TafsirEntity tafsir,
  }) = _SurahEntity;
}
