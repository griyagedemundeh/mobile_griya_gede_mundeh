import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_consultation_ticket.freezed.dart';
part 'general_consultation_ticket.g.dart';

@freezed
class GeneralConsultationTicket with _$GeneralConsultationTicket {
  const factory GeneralConsultationTicket({
    required int id,
    required int memberId,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _GeneralConsultationTicket;

  factory GeneralConsultationTicket.fromJson(Map<String, dynamic> json) =>
      _$GeneralConsultationTicketFromJson(json);
}
