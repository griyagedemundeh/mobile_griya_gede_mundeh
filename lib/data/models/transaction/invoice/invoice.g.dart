// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as String,
      consultationId: json['consultationId'] as String?,
      ceremonyHistoryId: (json['ceremonyHistoryId'] as num).toInt(),
      memberId: (json['memberId'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toInt(),
      paymentUrl: json['paymentUrl'] as String?,
      paymentToken: json['paymentToken'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      isCash: json['isCash'] as bool,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      paidAt: json['paidAt'] == null
          ? null
          : DateTime.parse(json['paidAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      invoiceMember:
          InvoiceMember.fromJson(json['invoiceMember'] as Map<String, dynamic>),
      invoiceCeremonyHistory: InvoiceCeremonyHistory.fromJson(
          json['invoiceCeremonyHistory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultationId': instance.consultationId,
      'ceremonyHistoryId': instance.ceremonyHistoryId,
      'memberId': instance.memberId,
      'totalPrice': instance.totalPrice,
      'paymentUrl': instance.paymentUrl,
      'paymentToken': instance.paymentToken,
      'paymentMethod': instance.paymentMethod,
      'isCash': instance.isCash,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'paidAt': instance.paidAt?.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'invoiceMember': instance.invoiceMember,
      'invoiceCeremonyHistory': instance.invoiceCeremonyHistory,
    };
