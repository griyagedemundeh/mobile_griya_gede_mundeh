import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_address.freezed.dart';
part 'member_address.g.dart';

@freezed
class MemberAddress with _$MemberAddress {
  const factory MemberAddress({
    required int id,
    required int memberId,
    required String address,
    String? addressAlias,
    String? addressNote,
    required bool isMain,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MemberAddress;

  factory MemberAddress.fromJson(Map<String, dynamic> json) =>
      _$MemberAddressFromJson(json);
}
