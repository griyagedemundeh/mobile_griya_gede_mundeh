// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthorUserImpl _$$AuthorUserImplFromJson(Map<String, dynamic> json) =>
    _$AuthorUserImpl(
      id: (json['id'] as num).toInt(),
      avatarUrl: json['avatarUrl'] as String?,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AuthorUserImplToJson(_$AuthorUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatarUrl': instance.avatarUrl,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
