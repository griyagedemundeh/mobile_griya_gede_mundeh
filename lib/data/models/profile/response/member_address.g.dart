// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberAddressImpl _$$MemberAddressImplFromJson(Map<String, dynamic> json) =>
    _$MemberAddressImpl(
      id: (json['id'] as num).toInt(),
      memberId: (json['memberId'] as num).toInt(),
      address: json['address'] as String,
      addressAlias: json['addressAlias'] as String?,
      addressNote: json['addressNote'] as String?,
      isMain: json['isMain'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MemberAddressImplToJson(_$MemberAddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'address': instance.address,
      'addressAlias': instance.addressAlias,
      'addressNote': instance.addressNote,
      'isMain': instance.isMain,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
