import 'package:freezed_annotation/freezed_annotation.dart';
import 'invoice_member.dart';
import 'invoice_ceremony_history.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    required String id,
    required int memberId,
    required int ceremonyHistoryId,
    required int totalPrice,
    required String status,
    required InvoiceMember invoiceMember,
    required InvoiceCeremonyHistory invoiceCeremonyHistory,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
