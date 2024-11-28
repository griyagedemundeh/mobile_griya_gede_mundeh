import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ceremony_consultation_request.freezed.dart';
part 'ceremony_consultation_request.g.dart';

@freezed
class CeremonyConsultationRequest with _$CeremonyConsultationRequest {
  const factory CeremonyConsultationRequest({
    required int userId,
    required String ceremonyName,
    required int ceremonyServiceId,
    required int consultationId,
    int? ceremonyPackageId,
    required String userName,
    required String userPhoto,
    required String status,
    required String ceremonyIconUrl,
    String? createdAt,
  }) = _CeremonyConsultationRequest;

  factory CeremonyConsultationRequest.fromJson(Map<String, dynamic> json) =>
      _$CeremonyConsultationRequestFromJson(json);
}
