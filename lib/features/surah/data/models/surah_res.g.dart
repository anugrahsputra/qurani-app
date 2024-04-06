// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahResImpl _$$SurahResImplFromJson(Map<String, dynamic> json) =>
    _$SurahResImpl(
      code: json['code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Surah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurahResImplToJson(_$SurahResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
