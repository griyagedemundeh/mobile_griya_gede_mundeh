import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/config/dio_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/storage_key.dart';
import 'package:mobile_griya_gede_mundeh/data/local/storage.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/request/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository.dart';

class AuthRepository extends IAuthRepository {
  Storage storageInstance() {
    return Storage();
  }

  @override
  Auth? getUser() {
    try {
      final auth = storageInstance().getData(key: StorageKey.authDB);

      if (auth != null) {
        return Auth.fromJson(jsonDecode(auth));
      }

      return null;
    } catch (e) {
      log('ERROR GET USER -> $e');
      rethrow;
    }
  }

  @override
  Future<ApiBaseResponse<Auth>> register({
    required RegisterRequest registerRequest,
  }) async {
    try {
      final data = FormData.fromMap(registerRequest.toJson());

      final response = await api.post(
        ApiEndPoints.register,
        data: data,
      );

      final responseData = response.data as Map<String, dynamic>;
      final apiResponse = ApiBaseResponse<Auth>.fromJson(responseData);

      storageInstance()
          .saveData(key: StorageKey.authDB, data: jsonEncode(apiResponse.data));

      return apiResponse;
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
