import 'package:freezed_annotation/freezed_annotation.dart';

import 'entity.dart';

part 'name_entity.freezed.dart';

@freezed
abstract class NameEntity with _$NameEntity {
  const factory NameEntity({
    required String short,
    required String long,
    required TranslationEntity transliteration,
    required TranslationEntity translation,
  }) = _NameEntity;
}