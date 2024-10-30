
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_category.freezed.dart';
part 'article_category.g.dart';

@freezed
class ArticleCategory with _$ArticleCategory {
  factory ArticleCategory({
    required int id,
    required String name,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ArticleCategory;

  factory ArticleCategory.fromJson(Map<String, dynamic> json) =>
      _$ArticleCategoryFromJson(json);
}
