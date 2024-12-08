// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_consultation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralConsultationRequestImpl _$$GeneralConsultationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneralConsultationRequestImpl(
      createdAt: json['createdAt'] as String?,
      consultationId: (json['consultationId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      userName: json['userName'] as String,
      userPhoto: json['userPhoto'] as String?,
    );

Map<String, dynamic> _$$GeneralConsultationRequestImplToJson(
        _$GeneralConsultationRequestImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'consultationId': instance.consultationId,
      'userId': instance.userId,
      'userName': instance.userName,
      'userPhoto': instance.userPhoto,
    };
