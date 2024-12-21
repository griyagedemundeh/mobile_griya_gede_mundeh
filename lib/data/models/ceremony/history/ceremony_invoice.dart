import 'package:freezed_annotation/freezed_annotation.dart';

part 'ceremony_invoice.freezed.dart';
part 'ceremony_invoice.g.dart';

@freezed
class CeremonyInvoice with _$CeremonyInvoice {
  const factory CeremonyInvoice({
    required String id,
    required int ceremonyHistoryId,
  }) = _CeremonyInvoice;

  factory CeremonyInvoice.fromJson(Map<String, dynamic> json) =>
      _$CeremonyInvoiceFromJson(json);
}
