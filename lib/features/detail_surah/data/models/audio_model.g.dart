// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioFileModelImpl _$$AudioFileModelImplFromJson(Map<String, dynamic> json) =>
    _$AudioFileModelImpl(
      id: json['id'] as int,
      chapterId: json['chapter_id'] as int,
      fileSize: (json['file_size'] as num).toDouble(),
      format: json['format'] as String,
      audioUrl: json['audio_url'] as String,
    );

Map<String, dynamic> _$$AudioFileModelImplToJson(
        _$AudioFileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chapter_id': instance.chapterId,
      'file_size': instance.fileSize,
      'format': instance.format,
      'audio_url': instance.audioUrl,
    };
