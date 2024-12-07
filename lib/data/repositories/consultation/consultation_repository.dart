import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/request/consultation/ticket/ceremony/ceremony_consultation_ticket_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/ceremony/ceremony_consultation_history.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/ticket/ceremony/ceremony_consultation_ticket.dart';

abstract class IConsultationRepository {
  Future<ApiBaseResponse<CeremonyConsultationTicket>> createConsultation({
    required CeremonyConsultationTicketRequest request,
  });

  Future<ApiBaseResponse<List<CeremonyConsultationHistory>>>
      getAllCeremonyConsultationHistories();
}
