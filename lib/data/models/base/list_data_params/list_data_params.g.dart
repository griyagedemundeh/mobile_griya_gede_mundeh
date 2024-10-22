// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_data_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListDataParamsImpl _$$ListDataParamsImplFromJson(Map<String, dynamic> json) =>
    _$ListDataParamsImpl(
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$ListDataParamsImplToJson(
        _$ListDataParamsImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
    };
