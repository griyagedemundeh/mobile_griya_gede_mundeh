// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceMemberImpl _$$InvoiceMemberImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceMemberImpl(
      userId: (json['userId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvoiceMemberImplToJson(_$InvoiceMemberImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'user': instance.user,
    };
