// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: (json['id'] as num).toInt(),
      consultationId: (json['consultationId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      ceremonyServiceId: (json['ceremonyServiceId'] as num).toInt(),
      ceremonyPackageId: (json['ceremonyPackageId'] as num?)?.toInt(),
      invoiceId: (json['invoiceId'] as num?)?.toInt(),
      messageType: json['messageType'] as String?,
      isAdmin: json['isAdmin'] as bool,
      message: json['message'] as String,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultationId': instance.consultationId,
      'userId': instance.userId,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'ceremonyPackageId': instance.ceremonyPackageId,
      'invoiceId': instance.invoiceId,
      'messageType': instance.messageType,
      'isAdmin': instance.isAdmin,
      'message': instance.message,
      'created_at': instance.created_at?.toIso8601String(),
    };
