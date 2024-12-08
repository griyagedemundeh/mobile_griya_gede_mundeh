// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralMessageImpl _$$GeneralMessageImplFromJson(Map<String, dynamic> json) =>
    _$GeneralMessageImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      consultationId: (json['consultationId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      message: json['message'] as String,
      isAdmin: json['isAdmin'] as bool,
    );

Map<String, dynamic> _$$GeneralMessageImplToJson(
        _$GeneralMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'consultationId': instance.consultationId,
      'userId': instance.userId,
      'message': instance.message,
      'isAdmin': instance.isAdmin,
    };
