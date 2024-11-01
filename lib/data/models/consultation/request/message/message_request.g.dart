// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageRequestImpl _$$MessageRequestImplFromJson(Map<String, dynamic> json) =>
    _$MessageRequestImpl(
      consultationId: (json['consultationId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      ceremonyServiceId: (json['ceremonyServiceId'] as num?)?.toInt(),
      ceremonyPackageId: (json['ceremonyPackageId'] as num?)?.toInt(),
      addressId: (json['addressId'] as num?)?.toInt(),
      invoiceId: (json['invoiceId'] as num?)?.toInt(),
      messageType: json['messageType'] as String?,
      isAdmin: json['isAdmin'] as bool,
      message: json['message'] as String,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$MessageRequestImplToJson(
        _$MessageRequestImpl instance) =>
    <String, dynamic>{
      'consultationId': instance.consultationId,
      'userId': instance.userId,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'ceremonyPackageId': instance.ceremonyPackageId,
      'addressId': instance.addressId,
      'invoiceId': instance.invoiceId,
      'messageType': instance.messageType,
      'isAdmin': instance.isAdmin,
      'message': instance.message,
      'createdAt': instance.createdAt,
    };
