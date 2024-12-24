import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/profile/request/update_profile_request.dart';
import 'package:mobile_griya_gede_mundeh/data/models/profile/response/profile.dart';

abstract class IProfileRepository {
  Future<ApiBaseResponse<Profile>> getProfile({required int id});

  Future<ApiBaseResponse<Profile>> updateProfile(
      {required UpdateProfileRequest request});
}
