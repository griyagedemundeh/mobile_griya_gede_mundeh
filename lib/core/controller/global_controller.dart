import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/data/models/address/request/address_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/address/response/address.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/address/address_repository_implementor.dart';

class GlobalController extends ChangeNotifier {
  final AddressRepository? addressRepository;

  GlobalController({this.addressRepository});

  Future<ApiBaseResponse<List<Address>?>?> getAddresses() async {
    try {
      final response = await addressRepository?.getAddresses();

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

  Future<ApiBaseResponse<dynamic>?> addAddress(
      {required AddressRequest addressRequest}) async {
    try {
      final response =
          await addressRepository?.addAddress(addressRequest: addressRequest);

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
