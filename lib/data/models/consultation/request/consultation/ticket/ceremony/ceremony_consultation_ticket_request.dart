import 'package:freezed_annotation/freezed_annotation.dart';

part 'ceremony_consultation_ticket_request.freezed.dart';
part 'ceremony_consultation_ticket_request.g.dart';

@freezed
class CeremonyConsultationTicketRequest
    with _$CeremonyConsultationTicketRequest {
  const factory CeremonyConsultationTicketRequest({
    required int memberAddressId,
    required int ceremonyServiceId,
    required String ceremonyServiceName,
    int? ceremonyServicePackageId,
    required int memberId,
  }) = _CeremonyConsultationTicketRequest;

  factory CeremonyConsultationTicketRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CeremonyConsultationTicketRequestFromJson(json);
}
