// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_ceremony_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceCeremonyHistoryImpl _$$InvoiceCeremonyHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceCeremonyHistoryImpl(
      id: (json['id'] as num).toInt(),
      consultationId: json['consultationId'] as String?,
      ceremonyServiceId: (json['ceremonyServiceId'] as num).toInt(),
      ceremonyServicePackageId:
          (json['ceremonyServicePackageId'] as num).toInt(),
      ceremonyAddress: json['ceremonyAddress'] as String,
      ceremonyAddressNote: json['ceremonyAddressNote'] as String?,
      ceremonyDate: DateTime.parse(json['ceremonyDate'] as String),
      title: json['title'] as String,
      packageName: json['packageName'] as String?,
      note: json['note'] as String?,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      ceremonyService: CeremonyService.fromJson(
          json['ceremonyService'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceCeremonyHistoryImplToJson(
        _$InvoiceCeremonyHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultationId': instance.consultationId,
      'ceremonyServiceId': instance.ceremonyServiceId,
      'ceremonyServicePackageId': instance.ceremonyServicePackageId,
      'ceremonyAddress': instance.ceremonyAddress,
      'ceremonyAddressNote': instance.ceremonyAddressNote,
      'ceremonyDate': instance.ceremonyDate.toIso8601String(),
      'title': instance.title,
      'packageName': instance.packageName,
      'note': instance.note,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'ceremonyService': instance.ceremonyService,
    };
