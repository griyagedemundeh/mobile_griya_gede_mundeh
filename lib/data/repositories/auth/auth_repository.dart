import 'package:mobile_griya_gede_mundeh/data/models/auth/request/login/login_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/request/register/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';

abstract class IAuthRepository {
  Auth? getUser();

  Future<ApiBaseResponse<Auth>> register({
    required RegisterRequest registerRequest,
  });

  Future<ApiBaseResponse<Auth>> login({
    required LoginRequest loginRequest,
  });

  logout();

  Future<ApiBaseResponse<dynamic>> resendEmailVerification();
  Future<ApiBaseResponse<dynamic>> cekStatusEmailVerification();
}
