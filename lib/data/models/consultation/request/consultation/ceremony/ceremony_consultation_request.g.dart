// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony_consultation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyConsultationRequestImpl _$$CeremonyConsultationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CeremonyConsultationRequestImpl(
      userId: (json['userId'] as num).toInt(),
      ceremonyName: json['ceremonyName'] as String,
      ceremonyServiceId: (json['ceremonyServiceId'] as num).toInt(),
      consultationId: (json['consultationId'] as num).toInt(),
      ceremonyPackageId: (json['ceremonyPackageId'] as num?)?.toInt(),
      ceremonyPackageName: json['ceremonyPackageName'] as String?,
      userName: json['userName'] as String,
      userPhoto: json['userPhoto'] as String,
      status: json['status'] as String,
      ceremonyIconUrl: json['ceremonyIconUrl'] as String,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$CeremonyConsultationRequestImplToJson(
        _$CeremonyConsultationRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'ceremonyName': instance.ceremonyName,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'consultationId': instance.consultationId,
      'ceremonyPackageId': instance.ceremonyPackageId,
      'ceremonyPackageName': instance.ceremonyPackageName,
      'userName': instance.userName,
      'userPhoto': instance.userPhoto,
      'status': instance.status,
      'ceremonyIconUrl': instance.ceremonyIconUrl,
      'createdAt': instance.createdAt,
    };
