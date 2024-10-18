import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:mobile_griya_gede_mundeh/config/dio_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/storage_key.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/request/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository.dart';

class AuthRepositoryService extends AuthRepository {
  final String _tag = "AUTH: ";

  @override
  Future<ApiBaseResponse<Auth>> register({
    required RegisterRequest registerRequest,
  }) async {
    try {
      // Convert the register request to FormData
      final data = FormData.fromMap(registerRequest.toJson());

      log('DATA ---->>>>>>> ${data.fields}');

      // Make the request
      final response = await api.post(
        ApiEndPoints.register,
        data: data,
      );

      // Parse the API response
      final auth = ApiBaseResponse<Auth>.fromJson(response.data);

      // Store the authentication data
      final box = Hive.box(StorageKey.authDB);
      box.put(StorageKey.auth, auth.data.toString());

      return auth;
    } on ApiBaseResponse catch (e) {
      // Handle the custom API exception with the error message
      log("$_tag API ERROR - ${e.message}");
      rethrow; // Optionally rethrow to propagate the error further
    } catch (e) {
      log("$_tag UNKNOWN ERROR - ${e.toString()}");
      rethrow;
    }
  }
}
