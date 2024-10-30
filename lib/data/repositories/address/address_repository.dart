import 'package:mobile_griya_gede_mundeh/data/models/address/response/address.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';

abstract class IAddressRepository {
  Future<ApiBaseResponse<List<Address>>> getAddresses();
}
