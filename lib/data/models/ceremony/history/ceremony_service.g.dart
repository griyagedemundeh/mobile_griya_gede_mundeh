// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyServiceImpl _$$CeremonyServiceImplFromJson(
        Map<String, dynamic> json) =>
    _$CeremonyServiceImpl(
      ceremonyCategoryId: (json['ceremonyCategoryId'] as num).toInt(),
      title: json['title'] as String,
      id: (json['id'] as num).toInt(),
      ceremonyCategory: CeremonyCategory.fromJson(
          json['ceremonyCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CeremonyServiceImplToJson(
        _$CeremonyServiceImpl instance) =>
    <String, dynamic>{
      'ceremonyCategoryId': instance.ceremonyCategoryId,
      'title': instance.title,
      'id': instance.id,
      'ceremonyCategory': instance.ceremonyCategory,
    };
