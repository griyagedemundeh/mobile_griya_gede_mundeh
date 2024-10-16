import 'dart:convert';
import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/config/dio_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/storage_key.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/request/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/api_base_response.dart';
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
      final data = jsonEncode(registerRequest);

      final response = await api.post(
        ApiEndPoints.register,
        data: data,
      );

      final auth = ApiBaseResponse<Auth>.fromJson(response.data);
      final box = Hive.box(StorageKey.authDB);
      box.put(StorageKey.auth, auth.data.toString());

      return auth;
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
