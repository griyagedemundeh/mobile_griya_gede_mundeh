// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyImpl _$$CeremonyImplFromJson(Map<String, dynamic> json) =>
    _$CeremonyImpl(
      id: (json['id'] as num).toInt(),
      ceremonyCategoryId: (json['ceremonyCategoryId'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      ceremonyCategory: json['ceremonyCategory'] == null
          ? null
          : CeremonyCategory.fromJson(
              json['ceremonyCategory'] as Map<String, dynamic>),
      ceremonyDocumentation: (json['ceremonyDocumentation'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : CeremonyDocumentation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CeremonyImplToJson(_$CeremonyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ceremonyCategoryId': instance.ceremonyCategoryId,
      'title': instance.title,
      'description': instance.description,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'ceremonyCategory': instance.ceremonyCategory,
      'ceremonyDocumentation': instance.ceremonyDocumentation,
    };
