// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceHistoryImpl _$$InvoiceHistoryImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceHistoryImpl(
      id: json['id'] as String,
      totalPrice: (json['totalPrice'] as num).toInt(),
      ceremonyHistoryId: (json['ceremonyHistoryId'] as num).toInt(),
      status: json['status'] as String,
      invoiceCeremonyHistory: InvoiceCeremonyHistory.fromJson(
          json['invoiceCeremonyHistory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceHistoryImplToJson(
        _$InvoiceHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'totalPrice': instance.totalPrice,
      'ceremonyHistoryId': instance.ceremonyHistoryId,
      'status': instance.status,
      'invoiceCeremonyHistory': instance.invoiceCeremonyHistory,
    };
