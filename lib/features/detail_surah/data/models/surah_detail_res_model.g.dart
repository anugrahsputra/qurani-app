// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_detail_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahDetailResModelImpl _$$SurahDetailResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SurahDetailResModelImpl(
      code: json['code'] as int,
      status: json['status'] as String,
      message: json['message'] as String,
      data: SurahDetailModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SurahDetailResModelImplToJson(
        _$SurahDetailResModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data.toJson(),
    };
