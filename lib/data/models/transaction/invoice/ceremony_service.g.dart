// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyServiceImpl _$$CeremonyServiceImplFromJson(
        Map<String, dynamic> json) =>
    _$CeremonyServiceImpl(
      id: (json['id'] as num).toInt(),
      ceremonyDocumentation: (json['ceremonyDocumentation'] as List<dynamic>)
          .map((e) => CeremonyDocumentation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CeremonyServiceImplToJson(
        _$CeremonyServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ceremonyDocumentation': instance.ceremonyDocumentation,
    };
