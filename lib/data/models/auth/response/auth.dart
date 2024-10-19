import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    required int id,
    required String fullName,
    required String avatarUrl,
    required String email,
    required bool isActive,
    required String phoneNumber,
    required String role,
    required String token,
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
