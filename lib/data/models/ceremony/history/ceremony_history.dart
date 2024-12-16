import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/history/ceremony_admin.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/history/ceremony_package.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/history/ceremony_service.dart';

part 'ceremony_history.freezed.dart';
part 'ceremony_history.g.dart';

@freezed
class CeremonyHistory with _$CeremonyHistory {
  const factory CeremonyHistory({
    required int id,
    required int adminId,
    required int memberId,
    required int memberAddressId,
    int? consultationId,
    required int ceremonyServiceId,
    required int ceremonyServicePackageId,
    required String title,
    required String packageName,
    required String description,
    required String note,
    required String ceremonyAddress,
    String? ceremonyAddressNote,
    required DateTime ceremonyDate,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    required CeremonyPackage ceremonyPackage,
    required CeremonyService ceremonyService,
    CeremonyAdmin? ceremonyAdmin,
  }) = _CeremonyHistory;

  factory CeremonyHistory.fromJson(Map<String, dynamic> json) =>
      _$CeremonyHistoryFromJson(json);
}
