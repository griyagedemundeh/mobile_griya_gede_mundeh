// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_ceremony_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceCeremonyHistoryImpl _$$InvoiceCeremonyHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceCeremonyHistoryImpl(
      id: (json['id'] as num).toInt(),
      adminId: (json['adminId'] as num).toInt(),
      memberId: (json['memberId'] as num).toInt(),
      memberAddressId: (json['memberAddressId'] as num).toInt(),
      consultationId: json['consultationId'] as String?,
      ceremonyServicePackageId:
          (json['ceremonyServicePackageId'] as num).toInt(),
      title: json['title'] as String,
      packageName: json['packageName'] as String,
      description: json['description'] as String,
      note: json['note'] as String?,
      ceremonyAddress: json['ceremonyAddress'] as String,
      ceremonyAddressNote: json['ceremonyAddressNote'] as String?,
      ceremonyDate: json['ceremonyDate'] == null
          ? null
          : DateTime.parse(json['ceremonyDate'] as String),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      ceremonyPackage: json['ceremonyPackage'] == null
          ? null
          : CeremonyPackage.fromJson(
              json['ceremonyPackage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceCeremonyHistoryImplToJson(
        _$InvoiceCeremonyHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adminId': instance.adminId,
      'memberId': instance.memberId,
      'memberAddressId': instance.memberAddressId,
      'consultationId': instance.consultationId,
      'ceremonyServicePackageId': instance.ceremonyServicePackageId,
      'title': instance.title,
      'packageName': instance.packageName,
      'description': instance.description,
      'note': instance.note,
      'ceremonyAddress': instance.ceremonyAddress,
      'ceremonyAddressNote': instance.ceremonyAddressNote,
      'ceremonyDate': instance.ceremonyDate?.toIso8601String(),
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'ceremonyPackage': instance.ceremonyPackage,
    };