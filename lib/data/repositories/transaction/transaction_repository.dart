import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/transaction/invoice/invoice.dart';

abstract class ITransactionRepository {
  Future<ApiBaseResponse<Invoice?>> getDetailInvoice({
    required String invoiceId,
  });
}
