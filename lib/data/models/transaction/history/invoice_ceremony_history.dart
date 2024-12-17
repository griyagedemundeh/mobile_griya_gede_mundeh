import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/transaction/invoice/ceremony_service.dart';

part 'invoice_ceremony_history.freezed.dart';
part 'invoice_ceremony_history.g.dart';

@freezed
class InvoiceCeremonyHistory with _$InvoiceCeremonyHistory {
  const factory InvoiceCeremonyHistory({
    required String title,
    required int ceremonyServiceId,
    required int id,
    CeremonyService? ceremonyService,
  }) = _InvoiceCeremonyHistory;

  factory InvoiceCeremonyHistory.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCeremonyHistoryFromJson(json);
}
