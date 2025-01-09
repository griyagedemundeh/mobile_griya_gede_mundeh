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
      ceremonyPackageName: json['ceremonyPackageName'] as String?,
      userName: json['userName'] as String,
      userPhoto: json['userPhoto'] as String,
      status: json['status'] as String,
      isRead: json['isRead'] as bool,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      ceremonyIconUrl: json['ceremonyIconUrl'] as String?,
    );

Map<String, dynamic> _$$ConsultationImplToJson(_$ConsultationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultationId': instance.consultationId,
      'userId': instance.userId,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'ceremonyPackageId': instance.ceremonyPackageId,
      'ceremonyName': instance.ceremonyName,
      'ceremonyPackageName': instance.ceremonyPackageName,
      'userName': instance.userName,
      'userPhoto': instance.userPhoto,
      'status': instance.status,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'ceremonyIconUrl': instance.ceremonyIconUrl,
    };
