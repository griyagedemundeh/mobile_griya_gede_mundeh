import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/history/ceremony_history.dart';

abstract class ICeremonyHistoryRepository {
  Future<ApiBaseResponse<List<CeremonyHistory?>?>> getCeremonyHistories({
    required ListDataParams listDataParams,
  });
  Future<ApiBaseResponse<CeremonyHistory?>> getCeremonyHistory({
    required int id,
  });
}
