import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/transaction/invoice/invoice.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/transaction/transaction_repository_implementor.dart';

class TransactionController extends ChangeNotifier {
  final TransactionRepository transactionRepository;

  TransactionController({
    required this.transactionRepository,
  });

  Future<ApiBaseResponse<Invoice?>?> getDetailInvoice({
    required String invoiceId,
  }) async {
    try {
      final response = await transactionRepository.getDetailInvoice(
        invoiceId: invoiceId,
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
