import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/article/author/author_user.dart';

part 'article_author.freezed.dart';
part 'article_author.g.dart';

@freezed
class Author with _$Author {
  factory Author({
    required int id,
    required int userId,
    required String role,
    required DateTime createdAt,
    required DateTime updatedAt,
    required AuthorUser user,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
