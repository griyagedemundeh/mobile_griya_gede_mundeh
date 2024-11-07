import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_user.freezed.dart';
part 'author_user.g.dart';

@freezed
class AuthorUser with _$AuthorUser {
  const factory AuthorUser({
    required int id,
    String? avatarUrl,
    required String fullName,
    required String email,
    required String phoneNumber,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AuthorUser;

  factory AuthorUser.fromJson(Map<String, dynamic> json) =>
      _$AuthorUserFromJson(json);
}
