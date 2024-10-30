
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/article/author/article_author.dart';
import 'package:mobile_griya_gede_mundeh/data/models/article/category/response/article_category.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  factory Article({
      required int id,
      required int adminId,
      required int articleCategoryId,
      required String title,
      required String slug,
      required String thumbnail,
      required String content,    
      required bool isPublish,
      required DateTime createdAt,
      required DateTime updatedAt,
      required ArticleCategory? articleCategory,
      required ArticleAuthor? author,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
