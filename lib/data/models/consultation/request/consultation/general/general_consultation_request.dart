import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_consultation_request.freezed.dart';
part 'general_consultation_request.g.dart';

@freezed
class GeneralConsultationRequest with _$GeneralConsultationRequest {
  const factory GeneralConsultationRequest({
    String? createdAt,
    required int consultationId,
    required int userId,
    required String userName,
    String? userPhoto,
  }) = _GeneralConsultationRequest;

  factory GeneralConsultationRequest.fromJson(Map<String, dynamic> json) =>
      _$GeneralConsultationRequestFromJson(json);
}
