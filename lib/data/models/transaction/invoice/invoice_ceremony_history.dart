import 'package:freezed_annotation/freezed_annotation.dart';
import 'ceremony_service.dart';

part 'invoice_ceremony_history.freezed.dart';
part 'invoice_ceremony_history.g.dart';

@freezed
class InvoiceCeremonyHistory with _$InvoiceCeremonyHistory {
  const factory InvoiceCeremonyHistory({
    required int id,
    String? consultationId,
    required int ceremonyServiceId,
    required int ceremonyServicePackageId,
    required String ceremonyAddress,
    String? ceremonyAddressNote,
    required DateTime ceremonyDate,
    required String title,
    String? packageName,
    String? note,
    required String description,
    required DateTime createdAt,
    required DateTime updatedAt,
    required CeremonyService ceremonyService,
  }) = _InvoiceCeremonyHistory;

  factory InvoiceCeremonyHistory.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCeremonyHistoryFromJson(json);
}
