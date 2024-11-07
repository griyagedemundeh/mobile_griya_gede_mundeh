import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/config/api_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/storage_key.dart';
import 'package:mobile_griya_gede_mundeh/data/local/storage.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/request/login/login_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/request/register/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
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

  @override
  logout() {
    try {
      storageInstance().deleteData(key: StorageKey.authDB);
    } catch (e) {
      log('ERROR LOGOUT -> $e');
    }
  }

  @override
  Future<ApiBaseResponse<Auth>> login(
      {required LoginRequest loginRequest}) async {
    try {
      final data = FormData.fromMap(loginRequest.toJson());

      final response = await api.post(
        ApiEndPoints.login,
        data: data,
      );

      final responseData = response.data as Map<String, dynamic>;
      final apiResponse = ApiBaseResponse<Auth>.fromJson(responseData);

      api.options.headers = {
        "Authorization": "Bearer ${responseData['data']['token']}"
      };

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
