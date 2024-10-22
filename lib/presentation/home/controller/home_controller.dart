import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/response/ceremony.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/auth/auth_repository_implementor.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/ceremony_repository_implementor.dart';

class HomeController extends ChangeNotifier {
  final AuthRepository? authRepository;
  final CeremonyRepository? ceremonyRepository;

  HomeController({
    this.authRepository,
    this.ceremonyRepository,
  });

  Auth? getUser() {
    return authRepository?.getUser();
  }

  Future<ApiBaseResponse<List<Ceremony?>?>?> getCeremonies({
    required ListDataParams listDataParams,
  }) async {
    try {
      final response = await ceremonyRepository?.getCeremonies(
        listDataParams: listDataParams,
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
