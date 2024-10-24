// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiBaseResponseImpl<T> _$$ApiBaseResponseImplFromJson<T>(
        Map<String, dynamic> json) =>
    _$ApiBaseResponseImpl<T>(
      status: (json['status'] as num).toInt(),
      message: json['message'],
      data: json['data'],
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiBaseResponseImplToJson<T>(
        _$ApiBaseResponseImpl<T> instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'meta': instance.meta,
    };
