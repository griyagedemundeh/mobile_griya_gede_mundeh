// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony_consultation_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyConsultationTicketImpl _$$CeremonyConsultationTicketImplFromJson(
        Map<String, dynamic> json) =>
    _$CeremonyConsultationTicketImpl(
      id: (json['id'] as num).toInt(),
      memberId: (json['memberId'] as num).toInt(),
      memberAddressId: (json['memberAddressId'] as num).toInt(),
      ceremonyServiceId: (json['ceremonyServiceId'] as num).toInt(),
      ceremonyServiceName: json['ceremonyServiceName'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CeremonyConsultationTicketImplToJson(
        _$CeremonyConsultationTicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'memberAddressId': instance.memberAddressId,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'ceremonyServiceName': instance.ceremonyServiceName,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };