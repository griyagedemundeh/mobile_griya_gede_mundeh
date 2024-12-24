import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/profile/request/update_profile_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/profile/response/profile.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/profile/profile_repository_implementor.dart';

class SettingController extends ChangeNotifier {
  final AuthRepository? authRepository;
  final ProfileRepository? profileRepository;

  SettingController({this.authRepository, this.profileRepository});

  logout() {
    authRepository?.logout();
  }

  Future<ApiBaseResponse<Profile?>?> getProfile({required int id}) async {
    try {
      final response = await profileRepository?.getProfile(id: id);

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

  Future<ApiBaseResponse<Profile?>?> updateProfile(
      {required UpdateProfileRequest request}) async {
    try {
      final response = await profileRepository?.updateProfile(
        request: request,
      );

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
