// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_detail_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahDetailResImpl _$$SurahDetailResImplFromJson(Map<String, dynamic> json) =>
    _$SurahDetailResImpl(
      code: json['code'] as int,
      status: json['status'] as String,
      message: json['message'] as String,
      data: SurahDetailModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SurahDetailResImplToJson(
        _$SurahDetailResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data.toJson(),
    };
