import 'package:freezed_annotation/freezed_annotation.dart';
import 'invoice_member.dart';
// import 'invoice_ceremony_history.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    required String id,
    String? consultationId,
    required int ceremonyHistoryId,
    required int memberId,
    required int totalPrice,
    required String paymentUrl,
    required String paymentToken,
    String? paymentMethod,
    required bool isCash,
    required String status,
    required DateTime createdAt,
    DateTime? paidAt,
    required DateTime updatedAt,
    required InvoiceMember invoiceMember,
    // required InvoiceCeremonyHistory invoiceCeremonyHistory,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
