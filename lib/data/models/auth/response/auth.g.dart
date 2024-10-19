// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthImpl _$$AuthImplFromJson(Map<String, dynamic> json) => _$AuthImpl(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
      avatarUrl: json['avatarUrl'] as String,
      email: json['email'] as String,
      isActive: json['isActive'] as bool,
      phoneNumber: json['phoneNumber'] as String,
      role: json['role'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$AuthImplToJson(_$AuthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'avatarUrl': instance.avatarUrl,
      'email': instance.email,
      'isActive': instance.isActive,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
      'token': instance.token,
    };
