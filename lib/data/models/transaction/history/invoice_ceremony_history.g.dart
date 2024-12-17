// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_ceremony_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceCeremonyHistoryImpl _$$InvoiceCeremonyHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceCeremonyHistoryImpl(
      title: json['title'] as String,
      ceremonyServiceId: (json['ceremonyServiceId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      ceremonyService: json['ceremonyService'] == null
          ? null
          : CeremonyService.fromJson(
              json['ceremonyService'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceCeremonyHistoryImplToJson(
        _$InvoiceCeremonyHistoryImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'id': instance.id,
      'ceremonyService': instance.ceremonyService,
    };
