import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/transaction/invoice/user.dart';

part 'ceremony_admin.freezed.dart';
part 'ceremony_admin.g.dart';

// Main model for CeremonyAdmin
@freezed
class CeremonyAdmin with _$CeremonyAdmin {
  const factory CeremonyAdmin({
    required int userId,
    required int id,
    required User user,
  }) = _CeremonyAdmin;

  factory CeremonyAdmin.fromJson(Map<String, dynamic> json) =>
      _$CeremonyAdminFromJson(json);
}
