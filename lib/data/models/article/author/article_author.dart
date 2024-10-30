import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_author.freezed.dart';
part 'article_author.g.dart';

@freezed
class ArticleAuthor with _$ArticleAuthor {
  factory ArticleAuthor({
    required int id,
    required int userId,
    required String role,
    required DateTime createdAt,
    required DateTime updateAt,
  }) = _ArticleAuthor;

  factory ArticleAuthor.fromJson(Map<String, dynamic> json) =>
      _$ArticleAuthorFromJson(json);
}
