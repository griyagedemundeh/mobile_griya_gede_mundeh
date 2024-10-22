import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/config/dio_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/response/ceremony.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/ceremony_repository.dart';

class CeremonyRepository extends ICeremonyRepository {
  @override
  Future<ApiBaseResponse<List<Ceremony?>?>> getCeremonies(
      {required ListDataParams listDataParams}) async {
    try {
      final response = await api.get(
        ApiEndPoints.ceremony,
        queryParameters: listDataParams.toJson(),
      );

      final responseData = response.data as Map<String, dynamic>;

      List<Ceremony> listData = [];

      for (var element in responseData['data']) {
        listData.add(Ceremony.fromJson(element));
      }

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: listData,
      );
      // return apiResponse;
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
