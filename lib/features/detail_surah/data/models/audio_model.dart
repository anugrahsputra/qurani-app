import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_model.freezed.dart';
part 'audio_model.g.dart';

@freezed
abstract class AudioFileModel with _$AudioFileModel {
  const factory AudioFileModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "chapter_id") required int chapterId,
    @JsonKey(name: "file_size") required double fileSize,
    @JsonKey(name: "format") required String format,
    @JsonKey(name: "audio_url") required String audioUrl,
  }) = _AudioFileModel;

  factory AudioFileModel.fromJson(Map<String, dynamic> json) =>
      _$AudioFileModelFromJson(json);
}
