// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony_documentation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyDocumentationImpl _$$CeremonyDocumentationImplFromJson(
        Map<String, dynamic> json) =>
    _$CeremonyDocumentationImpl(
      id: (json['id'] as num).toInt(),
      ceremonyServiceId: (json['ceremonyServiceId'] as num).toInt(),
      photo: json['photo'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CeremonyDocumentationImplToJson(
        _$CeremonyDocumentationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'photo': instance.photo,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
