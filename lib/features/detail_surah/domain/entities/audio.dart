import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio.freezed.dart';

@freezed
abstract class AudioFile with _$AudioFile {
  const factory AudioFile({
    required int? id,
    required int chapterId,
    required double fileSize,
    required String format,
    required String audioUrl,
  }) = _AudioFile;
}