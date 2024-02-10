import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation_entity.freezed.dart';

@freezed
class TranslationEntity with _$TranslationEntity {
  const factory TranslationEntity({
    required String en,
    required String id,
  }) = _TranslationEntity;
}
