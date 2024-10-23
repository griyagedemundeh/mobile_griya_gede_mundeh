import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/package/ceremony_package.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/response/ceremony.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/ceremony_repository_implementor.dart';

class CeremonyController extends ChangeNotifier {
  final CeremonyRepository ceremonyRepository;

  CeremonyController({
    required this.ceremonyRepository,
  });

  Future<ApiBaseResponse<Ceremony?>?> getCeremony({
    required int id,
  }) async {
    try {
      final response = await ceremonyRepository.getCeremony(
        id: id,
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

  Future<ApiBaseResponse<List<CeremonyPackage?>?>?> getCeremonyPackages({
    required int ceremonyServiceId,
  }) async {
    try {
      final response = await ceremonyRepository.getCeremonyPackages(
        ceremonyServiceId: ceremonyServiceId,
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