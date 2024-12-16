// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony_admin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyAdminImpl _$$CeremonyAdminImplFromJson(Map<String, dynamic> json) =>
    _$CeremonyAdminImpl(
      userId: (json['userId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CeremonyAdminImplToJson(_$CeremonyAdminImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'user': instance.user,
    };
