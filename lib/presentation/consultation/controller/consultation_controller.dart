import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/ceremony/ceremony_consultation_history.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/consultation/consultation_repository_implementor.dart';

class ConsultationController extends ChangeNotifier {
  final ConsultationRepository consultationRepository;

  ConsultationController({required this.consultationRepository});

  Future<ApiBaseResponse<List<CeremonyConsultationHistory?>?>?>
      getCeremonyConsultationHistories() async {
    try {
      final response =
          await consultationRepository.getAllCeremonyConsultationHistories();

      return response;
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
