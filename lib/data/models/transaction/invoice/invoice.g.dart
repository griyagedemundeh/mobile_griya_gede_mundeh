// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as String,
      memberId: (json['memberId'] as num).toInt(),
      ceremonyHistoryId: (json['ceremonyHistoryId'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toInt(),
      paymentUrl: json['paymentUrl'] as String?,
      status: json['status'] as String,
      invoiceMember:
          InvoiceMember.fromJson(json['invoiceMember'] as Map<String, dynamic>),
      invoiceCeremonyHistory: InvoiceCeremonyHistory.fromJson(
          json['invoiceCeremonyHistory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'ceremonyHistoryId': instance.ceremonyHistoryId,
      'totalPrice': instance.totalPrice,
      'paymentUrl': instance.paymentUrl,
      'status': instance.status,
      'invoiceMember': instance.invoiceMember,
      'invoiceCeremonyHistory': instance.invoiceCeremonyHistory,
    };
