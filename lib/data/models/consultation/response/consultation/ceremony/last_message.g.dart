// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastMessageImpl _$$LastMessageImplFromJson(Map<String, dynamic> json) =>
    _$LastMessageImpl(
      id: (json['id'] as num).toInt(),
      consultationId: (json['consultationId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      isAdmin: json['isAdmin'] as bool,
      messageType: json['messageType'] as String,
      message: json['message'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$LastMessageImplToJson(_$LastMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultationId': instance.consultationId,
      'userId': instance.userId,
      'isAdmin': instance.isAdmin,
      'messageType': instance.messageType,
      'message': instance.message,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
