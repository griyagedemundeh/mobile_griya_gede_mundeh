// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultationImpl _$$ConsultationImplFromJson(Map<String, dynamic> json) =>
    _$ConsultationImpl(
      id: (json['id'] as num).toInt(),
      consultationId: (json['consultationId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      ceremonyServiceId: (json['ceremonyServiceId'] as num).toInt(),
      ceremonyPackageId: (json['ceremonyPackageId'] as num?)?.toInt(),
      ceremonyName: json['ceremonyName'] as String?,
      userName: json['userName'] as String,
      userPhoto: json['userPhoto'] as String,
      status: json['status'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ConsultationImplToJson(_$ConsultationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultationId': instance.consultationId,
      'userId': instance.userId,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'ceremonyPackageId': instance.ceremonyPackageId,
      'ceremonyName': instance.ceremonyName,
      'userName': instance.userName,
      'userPhoto': instance.userPhoto,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
