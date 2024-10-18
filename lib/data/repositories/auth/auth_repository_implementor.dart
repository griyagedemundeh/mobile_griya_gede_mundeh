import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:mobile_griya_gede_mundeh/config/dio_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/storage_key.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/request/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository.dart';

class AuthRepository extends IAuthRepository {
  @override
  Future<ApiBaseResponse<Auth>> register({
    required RegisterRequest registerRequest,
  }) async {
    try {
      final data = FormData.fromMap(registerRequest.toJson());

      final response = await api.post<ApiBaseResponse<Auth>>(
        ApiEndPoints.register,
        data: data,
      );

      final box = Hive.box(StorageKey.authDB);
      box.put(StorageKey.auth, response.data.toString());

      return response.data!;
    } on DioException catch (e) {
      throw ApiBaseResponse.fromJson(e.response?.data);
    }
  }
}
