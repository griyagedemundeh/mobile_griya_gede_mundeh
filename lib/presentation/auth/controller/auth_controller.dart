import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/request/login/login_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/request/register/register_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';

class AuthController extends ChangeNotifier {
  final AuthRepository authRepository;

  AuthController({required this.authRepository});

  Auth? getUser() {
    return authRepository.getUser();
  }

  Future<ApiBaseResponse<Auth>> register({
    required RegisterRequest registerRequest,
  }) async {
    try {
      final response =
          await authRepository.register(registerRequest: registerRequest);

      return response;
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

  Future<ApiBaseResponse<Auth>> login({
    required LoginRequest loginRequest,
  }) async {
    try {
      final response = authRepository.login(loginRequest: loginRequest);
      return response;
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
