// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_consultation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralConsultationImpl _$$GeneralConsultationImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneralConsultationImpl(
      id: (json['id'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String?,
      isRead: json['isRead'] as bool,
      consultationId: (json['consultationId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      userName: json['userName'] as String,
      userPhoto: json['userPhoto'] as String?,
    );

Map<String, dynamic> _$$GeneralConsultationImplToJson(
        _$GeneralConsultationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isRead': instance.isRead,
      'consultationId': instance.consultationId,
      'userId': instance.userId,
      'userName': instance.userName,
      'userPhoto': instance.userPhoto,
    };
