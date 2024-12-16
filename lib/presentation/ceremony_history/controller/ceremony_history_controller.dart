import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/history/ceremony_history.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/history/ceremony_history_repository_implementor.dart';

class CeremonyHistoryController extends ChangeNotifier {
  final CeremonyHistoryRepository ceremonyHistoryRepository;

  CeremonyHistoryController({
    required this.ceremonyHistoryRepository,
  });

  Future<ApiBaseResponse<CeremonyHistory?>?> getDetailCeremonyHistory({
    required int id,
  }) async {
    try {
      final response =
          await ceremonyHistoryRepository.getCeremonyHistory(id: id);

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

  Future<ApiBaseResponse<List<CeremonyHistory?>?>?> getListCeremonyHistory(
      {required ListDataParams request}) async {
    try {
      final response = await ceremonyHistoryRepository.getCeremonyHistories(
        listDataParams: request,
      );

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
