// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyCategoryImpl _$$CeremonyCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$CeremonyCategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CeremonyCategoryImplToJson(
        _$CeremonyCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'description': instance.description,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
