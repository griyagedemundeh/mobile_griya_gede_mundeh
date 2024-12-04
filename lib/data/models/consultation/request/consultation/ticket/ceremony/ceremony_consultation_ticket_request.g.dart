// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony_consultation_ticket_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyConsultationTicketRequestImpl
    _$$CeremonyConsultationTicketRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CeremonyConsultationTicketRequestImpl(
          memberAddressId: (json['memberAddressId'] as num).toInt(),
          ceremonyServiceId: (json['ceremonyServiceId'] as num).toInt(),
          ceremonyServiceName: json['ceremonyServiceName'] as String,
          ceremonyServicePackageId:
              (json['ceremonyServicePackageId'] as num?)?.toInt(),
          memberId: (json['memberId'] as num).toInt(),
        );

Map<String, dynamic> _$$CeremonyConsultationTicketRequestImplToJson(
        _$CeremonyConsultationTicketRequestImpl instance) =>
    <String, dynamic>{
      'memberAddressId': instance.memberAddressId,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'ceremonyServiceName': instance.ceremonyServiceName,
      'ceremonyServicePackageId': instance.ceremonyServicePackageId,
      'memberId': instance.memberId,
    };
