import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/profile/response/member_address.dart';
import 'package:mobile_griya_gede_mundeh/data/models/profile/response/user.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required int id,
    required int userId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required User user,
    required List<MemberAddress> memberAddress,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
