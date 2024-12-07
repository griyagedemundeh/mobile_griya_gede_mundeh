import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/config/api_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/request/consultation/ticket/ceremony/ceremony_consultation_ticket_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/ceremony/ceremony_consultation_history.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/ticket/ceremony/ceremony_consultation_ticket.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/Consultation/Consultation_repository.dart';

class ConsultationRepository extends IConsultationRepository {
  @override
  Future<ApiBaseResponse<CeremonyConsultationTicket>> createConsultation(
      {required CeremonyConsultationTicketRequest request}) async {
    try {
      final response = await api.post(
        '${ApiEndPoints.consultation}/create',
        data: request.toJson(),
      );

      final responseData = response.data as Map<String, dynamic>;

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: CeremonyConsultationTicket.fromJson(responseData['data']),
      );
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiBaseResponse.fromJson(e.response!.data);
      }
      throw ApiBaseResponse(
          status: 500,
          message: [e.message ?? 'Unknown error occurred'],
          data: null);
    }
  }

  @override
  Future<ApiBaseResponse<List<CeremonyConsultationHistory>>>
      getAllCeremonyConsultationHistories() async {
    try {
      final response = await api.get(
        ApiEndPoints.consultation,
      );

      final responseData = response.data as Map<String, dynamic>;

      List<CeremonyConsultationHistory> listData = [];

      for (var element in responseData['data']) {
        listData.add(CeremonyConsultationHistory.fromJson(element));
      }

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: listData,
      );
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiBaseResponse.fromJson(e.response!.data);
      }
      throw ApiBaseResponse(
          status: 500,
          message: [e.message ?? 'Unknown error occurred'],
          data: null);
    }
  }
}
