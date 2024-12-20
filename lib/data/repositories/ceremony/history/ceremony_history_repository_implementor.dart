import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/config/api_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/history/ceremony_history.dart';

import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/history/ceremony_history_repository.dart';

class CeremonyHistoryRepository extends ICeremonyHistoryRepository {
  @override
  Future<ApiBaseResponse<List<CeremonyHistory?>?>> getCeremonyHistories(
      {required ListDataParams listDataParams}) async {
    try {
      final response = await api.get(
        "${ApiEndPoints.ceremony}/history",
        queryParameters: listDataParams.toJson(),
      );

      final responseData = response.data as Map<String, dynamic>;

      List<CeremonyHistory> listData = [];

      for (var element in responseData['data']) {
        listData.add(CeremonyHistory.fromJson(element));
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

  @override
  Future<ApiBaseResponse<CeremonyHistory?>> getCeremonyHistory(
      {required int id}) async {
    try {
      final response = await api.get('${ApiEndPoints.ceremony}/history/$id');

      final responseData = response.data as Map<String, dynamic>;

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: CeremonyHistory.fromJson(responseData['data']),
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
  Future<ApiBaseResponse<List<CeremonyHistory?>?>>
      getCeremonyOnProgress() async {
    try {
      final response =
          await api.get("${ApiEndPoints.ceremony}/history/on-going");

      final responseData = response.data as Map<String, dynamic>;

      List<CeremonyHistory> listData = [];

      for (var element in responseData['data']) {
        listData.add(CeremonyHistory.fromJson(element));
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
