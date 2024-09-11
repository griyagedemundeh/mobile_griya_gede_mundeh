// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthImpl _$$AuthImplFromJson(Map<String, dynamic> json) => _$AuthImpl(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$AuthImplToJson(_$AuthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'avatarUrl': instance.avatarUrl,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'token': instance.token,
    };
