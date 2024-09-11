import 'package:mobile_griya_gede_mundeh/data/models/requests/auth/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/responses/auth/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/responses/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/foundation.dart';

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
