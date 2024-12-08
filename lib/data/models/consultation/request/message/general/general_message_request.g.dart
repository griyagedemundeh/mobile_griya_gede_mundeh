// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralMessageRequestImpl _$$GeneralMessageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GeneralMessageRequestImpl(
      createdAt: json['createdAt'] as String?,
      consultationId: (json['consultationId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      message: json['message'] as String,
      isAdmin: json['isAdmin'] as bool,
    );

Map<String, dynamic> _$$GeneralMessageRequestImplToJson(
        _$GeneralMessageRequestImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'consultationId': instance.consultationId,
      'userId': instance.userId,
      'message': instance.message,
      'isAdmin': instance.isAdmin,
    };
