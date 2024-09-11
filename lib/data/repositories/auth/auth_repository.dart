import 'package:mobile_griya_gede_mundeh/data/models/requests/auth/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/responses/auth/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/responses/base/api_base_response.dart';

abstract class AuthRepository {
  Future<ApiBaseResponse<Auth>> register({
    required RegisterRequest registerRequest,
  });
}
