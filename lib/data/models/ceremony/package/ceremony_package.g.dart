// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony_package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyPackageImpl _$$CeremonyPackageImplFromJson(
        Map<String, dynamic> json) =>
    _$CeremonyPackageImpl(
      id: (json['id'] as num).toInt(),
      ceremonyServiceId: (json['ceremonyServiceId'] as num).toInt(),
      name: json['name'] as String?,
      description: json['description'] as String,
      price: (json['price'] as num).toInt(),
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CeremonyPackageImplToJson(
        _$CeremonyPackageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
