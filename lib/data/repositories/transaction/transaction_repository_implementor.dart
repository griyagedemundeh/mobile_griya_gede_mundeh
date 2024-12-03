import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/config/api_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/transaction/invoice/invoice.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/transaction/transaction_repository.dart';

class TransactionRepository extends ITransactionRepository {
  @override
  Future<ApiBaseResponse<Invoice?>> getDetailInvoice(
      {required String invoiceId}) async {
    try {
      final response = await api.get(
        '${ApiEndPoints.invoice}/$invoiceId',
      );

      final responseData = response.data as Map<String, dynamic>;

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: Invoice.fromJson(responseData['data']),
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
