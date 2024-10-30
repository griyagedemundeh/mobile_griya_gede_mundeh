import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
