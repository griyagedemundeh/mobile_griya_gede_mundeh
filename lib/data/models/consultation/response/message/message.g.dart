// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      consultationId: (json['consultationId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      ceremonyServiceId: (json['ceremonyServiceId'] as num?)?.toInt(),
      ceremonyPackageId: (json['ceremonyPackageId'] as num?)?.toInt(),
      addressId: (json['addressId'] as num?)?.toInt(),
      invoiceId: json['invoiceId'] as String?,
      messageType: json['messageType'] as String?,
      isAdmin: json['isAdmin'] as bool,
      message: json['message'] as String,
      title: json['title'] as String?,
      totalPrice: json['totalPrice'] as String?,
      ceremonyDate: json['ceremonyDate'] as String?,
      address: json['address'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
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
      'title': instance.title,
      'totalPrice': instance.totalPrice,
      'ceremonyDate': instance.ceremonyDate,
      'address': instance.address,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
