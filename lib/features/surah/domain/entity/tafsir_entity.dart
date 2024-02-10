import 'package:freezed_annotation/freezed_annotation.dart';

part 'tafsir_entity.freezed.dart';

@freezed
class TafsirEntity with _$TafsirEntity {
  const factory TafsirEntity({
    required String id,
  }) = _TafsirEntity;
}
