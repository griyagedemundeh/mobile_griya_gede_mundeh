import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/config/api_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/profile/request/update_profile_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/profile/response/profile.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/profile/profile_repository.dart';

class ProfileRepository extends IProfileRepository {
  @override
  Future<ApiBaseResponse<Profile>> getProfile({required int id}) async {
    try {
      final response = await api.get(
        "${ApiEndPoints.member}/$id",
      );

      final responseData = response.data as Map<String, dynamic>;

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: Profile.fromJson(responseData['data']),
      );
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiBaseResponse.fromJson(e.response!.data);
      }
      throw ApiBaseResponse(
          status: 500,
          message: [e.message ?? 'Unknown Error Occured'],
          data: null);
    }
  }

  @override
  Future<ApiBaseResponse<Profile>> updateProfile(
      {required UpdateProfileRequest request}) async {
    try {
      final response = await api.patch(
        '${ApiEndPoints.member}/${request.id}',
        data: request.toJson(),
      );

      final responseData = response.data as Map<String, dynamic>;

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: Profile.fromJson(responseData['data']),
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
