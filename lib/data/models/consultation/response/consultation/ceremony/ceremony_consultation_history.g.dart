// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony_consultation_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyConsultationHistoryImpl _$$CeremonyConsultationHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$CeremonyConsultationHistoryImpl(
      id: (json['id'] as num).toInt(),
      memberId: (json['memberId'] as num).toInt(),
      ceremonyServiceId: (json['ceremonyServiceId'] as num).toInt(),
      ceremonyServicePackageId:
          (json['ceremonyServicePackageId'] as num?)?.toInt(),
      ceremonyServiceName: json['ceremonyServiceName'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      lastMessage: json['lastMessage'] == null
          ? null
          : LastMessage.fromJson(json['lastMessage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CeremonyConsultationHistoryImplToJson(
        _$CeremonyConsultationHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'ceremonyServicePackageId': instance.ceremonyServicePackageId,
      'ceremonyServiceName': instance.ceremonyServiceName,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'lastMessage': instance.lastMessage,
    };
