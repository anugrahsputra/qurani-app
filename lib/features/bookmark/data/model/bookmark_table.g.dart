// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookmarkTableImpl _$$BookmarkTableImplFromJson(Map<String, dynamic> json) =>
    _$BookmarkTableImpl(
      id: json['id'] as int,
      inSurah: json['inSurah'] as int,
      surahName: json['surahName'] as String,
      textArab: json['textArab'] as String,
      textTranslate: json['textTranslate'] as String,
      textTransliteration: json['textTransliteration'] as String,
    );

Map<String, dynamic> _$$BookmarkTableImplToJson(_$BookmarkTableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inSurah': instance.inSurah,
      'surahName': instance.surahName,
      'textArab': instance.textArab,
      'textTranslate': instance.textTranslate,
      'textTransliteration': instance.textTransliteration,
    };
