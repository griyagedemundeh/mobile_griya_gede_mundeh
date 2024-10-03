import 'dart:convert';
import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/config/dio_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/data/models/requests/auth/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/responses/auth/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/responses/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_implementor.g.dart';

class AuthRepositoryImplementor extends AuthRepository {
  final String _tag = "AUTH: ";
  final Ref ref;

  AuthRepositoryImplementor({required this.ref});

  @override
  Future<ApiBaseResponse<Auth>> register({
    required RegisterRequest registerRequest,
  }) async {
    try {
      final data = jsonEncode({
        'fullName': registerRequest.fullName,
        'phoneNumber': registerRequest.phoneNumber,
        'email': registerRequest.email,
        'password': registerRequest.password,
        'passwordConfirm': registerRequest.passwordConfirm,
        'address': registerRequest.address,
      });

      log('DATA ----->>> $data');

      final response = await api.post(
        ApiEndPoints.register,
        data: data,
      );

      return ApiBaseResponse.fromJson(response.data);
    } catch (e) {
      log("$_tag ERROR - $e");

      rethrow;
    }
  }
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImplementor(
    ref: ref,
  );
}
