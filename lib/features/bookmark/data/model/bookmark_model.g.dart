// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookmarkModelImpl _$$BookmarkModelImplFromJson(Map<String, dynamic> json) =>
    _$BookmarkModelImpl(
      id: json['id'] as int,
      surahNumber: json['surahNumber'] as int,
      verseNumber: json['verseNumber'] as int,
      surahName: json['surahName'] as String,
      surahNameTranslation: json['surahNameTranslation'] as String,
      verse: json['verse'] as String,
      verseTranslation: json['verseTranslation'] as String,
      verseTransliteration: json['verseTransliteration'] as String,
    );

Map<String, dynamic> _$$BookmarkModelImplToJson(_$BookmarkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surahNumber': instance.surahNumber,
      'verseNumber': instance.verseNumber,
      'surahName': instance.surahName,
      'surahNameTranslation': instance.surahNameTranslation,
      'verse': instance.verse,
      'verseTranslation': instance.verseTranslation,
      'verseTransliteration': instance.verseTransliteration,
    };
