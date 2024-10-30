import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/config/dio_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/documentation/response/ceremony_documentation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/package/ceremony_package.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/response/ceremony.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/ceremony/ceremony_repository.dart';

class CeremonyRepository extends ICeremonyRepository {
  @override
  Future<ApiBaseResponse<List<Ceremony?>?>> getCeremonies(
      {required ListDataParams listDataParams}) async {
    try {
      final response = await api.get(
        ApiEndPoints.ceremony,
        queryParameters: listDataParams.toJson(),
      );

      final responseData = response.data as Map<String, dynamic>;
      log(response.data.toString(), name: "Ceremony Response");

      List<Ceremony> listData = [];

      for (var element in responseData['data']) {
        listData.add(Ceremony.fromJson(element));
      }

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: listData,
      );
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

  @override
  Future<ApiBaseResponse<Ceremony?>> getCeremony({required int id}) async {
    try {
      final response = await api.get('${ApiEndPoints.ceremony}/$id');

      final responseData = response.data as Map<String, dynamic>;

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: Ceremony.fromJson(responseData['data']),
      );
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

  @override
  Future<ApiBaseResponse<List<CeremonyPackage?>?>> getCeremonyPackages(
      {required int ceremonyServiceId}) async {
    try {
      final response = await api.get(
        '${ApiEndPoints.ceremony}/package/$ceremonyServiceId',
      );

      final responseData = response.data as Map<String, dynamic>;

      List<CeremonyPackage> listData = [];

      for (var element in responseData['data']) {
        listData.add(CeremonyPackage.fromJson(element));
      }

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: listData,
      );
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

  @override
  Future<ApiBaseResponse<List<CeremonyDocumentation?>?>>
      getCeremonyDocumentations({required int ceremonyServiceId}) async {
    try {
      final response = await api.get(
        '${ApiEndPoints.ceremony}/documentation/$ceremonyServiceId',
      );

      final responseData = response.data as Map<String, dynamic>;

      List<CeremonyDocumentation> listData = [];

      for (var element in responseData['data']) {
        listData.add(CeremonyDocumentation.fromJson(element));
      }

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: listData,
      );
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
