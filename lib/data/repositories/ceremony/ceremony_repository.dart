import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/response/ceremony.dart';

abstract class ICeremonyRepository {
  Future<ApiBaseResponse<List<Ceremony?>?>> getCeremonies({
    required ListDataParams listDataParams,
  });
}
