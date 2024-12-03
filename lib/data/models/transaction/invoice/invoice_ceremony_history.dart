import 'package:freezed_annotation/freezed_annotation.dart';
import 'ceremony_package.dart';

part 'invoice_ceremony_history.freezed.dart';
part 'invoice_ceremony_history.g.dart';

@freezed
class InvoiceCeremonyHistory with _$InvoiceCeremonyHistory {
  const factory InvoiceCeremonyHistory({
    required int id,
    required int adminId,
    required int memberId,
    required int memberAddressId,
    String? consultationId,
    required int ceremonyServicePackageId,
    required String title,
    required String packageName,
    required String description,
    String? note,
    required String ceremonyAddress,
    String? ceremonyAddressNote,
    required DateTime ceremonyDate,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    required CeremonyPackage ceremonyPackage,
  }) = _InvoiceCeremonyHistory;

  factory InvoiceCeremonyHistory.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCeremonyHistoryFromJson(json);
}
