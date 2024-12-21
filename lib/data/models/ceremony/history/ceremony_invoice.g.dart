// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceremony_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CeremonyInvoiceImpl _$$CeremonyInvoiceImplFromJson(
        Map<String, dynamic> json) =>
    _$CeremonyInvoiceImpl(
      id: json['id'] as String,
      ceremonyHistoryId: (json['ceremonyHistoryId'] as num).toInt(),
    );

Map<String, dynamic> _$$CeremonyInvoiceImplToJson(
        _$CeremonyInvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ceremonyHistoryId': instance.ceremonyHistoryId,
    };
