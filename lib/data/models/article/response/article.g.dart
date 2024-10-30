// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      id: (json['id'] as num).toInt(),
      adminId: (json['adminId'] as num).toInt(),
      articleCategoryId: (json['articleCategoryId'] as num).toInt(),
      title: json['title'] as String,
      slug: json['slug'] as String,
      thumbnail: json['thumbnail'] as String,
      content: json['content'] as String,
      isPublish: json['isPublish'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      articleCategory: json['articleCategory'] == null
          ? null
          : ArticleCategory.fromJson(
              json['articleCategory'] as Map<String, dynamic>),
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adminId': instance.adminId,
      'articleCategoryId': instance.articleCategoryId,
      'title': instance.title,
      'slug': instance.slug,
      'thumbnail': instance.thumbnail,
      'content': instance.content,
      'isPublish': instance.isPublish,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'articleCategory': instance.articleCategory,
      'author': instance.author,
    };
