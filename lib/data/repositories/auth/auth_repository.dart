import 'package:mobile_griya_gede_mundeh/data/models/auth/request/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/api_base_response.dart';

abstract class IAuthRepository {
  Auth? getUser();

  Future<ApiBaseResponse<Auth>> register({
    required RegisterRequest registerRequest,
  });
}
