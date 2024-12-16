import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/transaction/history/invoice_history.dart';
import 'package:mobile_griya_gede_mundeh/data/models/transaction/invoice/invoice.dart';

abstract class ITransactionRepository {
  Future<ApiBaseResponse<Invoice?>> getDetailInvoice({
    required String invoiceId,
  });

  Future<ApiBaseResponse<List<InvoiceHistory?>>> getListInvoice({
    required ListDataParams request,
  });
}
