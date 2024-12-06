import 'package:freezed_annotation/freezed_annotation.dart';

part 'ceremony_consultation_ticket.freezed.dart';
part 'ceremony_consultation_ticket.g.dart';

@freezed
class CeremonyConsultationTicket with _$CeremonyConsultationTicket {
  const factory CeremonyConsultationTicket({
    required int id,
    required int memberId,
    required int ceremonyServiceId,
    required String ceremonyServiceName,
    String? ceremonyServicePackageId,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _CeremonyConsultationTicket;

  factory CeremonyConsultationTicket.fromJson(Map<String, dynamic> json) =>
      _$CeremonyConsultationTicketFromJson(json);
}
