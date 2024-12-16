import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/transaction/history/invoice_ceremony_history.dart';

part 'invoice_history.freezed.dart';
part 'invoice_history.g.dart';

@freezed
class InvoiceHistory with _$InvoiceHistory {
  const factory InvoiceHistory({
    required String id,
    required int totalPrice,
    required int ceremonyHistoryId,
    required String status,
    required InvoiceCeremonyHistory invoiceCeremonyHistory,
  }) = _InvoiceHistory;

  factory InvoiceHistory.fromJson(Map<String, dynamic> json) =>
      _$InvoiceHistoryFromJson(json);
}
