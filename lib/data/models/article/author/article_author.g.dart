// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleAuthorImpl _$$ArticleAuthorImplFromJson(Map<String, dynamic> json) =>
    _$ArticleAuthorImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      role: json['role'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updateAt: DateTime.parse(json['updateAt'] as String),
    );

Map<String, dynamic> _$$ArticleAuthorImplToJson(_$ArticleAuthorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'role': instance.role,
      'createdAt': instance.createdAt.toIso8601String(),
      'updateAt': instance.updateAt.toIso8601String(),
    };
