import 'package:mobile_griya_gede_mundeh/data/models/auth/request/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  Future build() async {
    return null;
  }

  Future<ApiBaseResponse<Auth>> register(
      {required RegisterRequest registerRequest}) async {
    final response = await ref
        .read(authRepositoryProvider)
        .register(registerRequest: registerRequest);

    return response;
  }
}
