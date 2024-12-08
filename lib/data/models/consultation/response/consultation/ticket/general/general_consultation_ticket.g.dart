// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_consultation_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralConsultationTicketImpl _$$GeneralConsultationTicketImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneralConsultationTicketImpl(
      id: (json['id'] as num).toInt(),
      memberId: (json['memberId'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$GeneralConsultationTicketImplToJson(
        _$GeneralConsultationTicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
