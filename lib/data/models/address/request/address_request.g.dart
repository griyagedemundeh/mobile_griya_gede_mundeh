// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressRequestImpl _$$AddressRequestImplFromJson(Map<String, dynamic> json) =>
    _$AddressRequestImpl(
      address: json['address'] as String,
      addressAlias: json['addressAlias'] as String?,
      addressNote: json['addressNote'] as String?,
    );

Map<String, dynamic> _$$AddressRequestImplToJson(
        _$AddressRequestImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'addressAlias': instance.addressAlias,
      'addressNote': instance.addressNote,
    };
