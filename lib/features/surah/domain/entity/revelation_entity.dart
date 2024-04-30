import 'package:freezed_annotation/freezed_annotation.dart';

part 'revelation_entity.freezed.dart';

@freezed
abstract class RevelationEntity with _$RevelationEntity {
  const factory RevelationEntity({
    required String arab,
    required String en,
    required String id,
  }) = _RevelationEntity;
}
