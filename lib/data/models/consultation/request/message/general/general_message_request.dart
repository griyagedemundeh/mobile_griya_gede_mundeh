import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_message_request.freezed.dart';
part 'general_message_request.g.dart';

@freezed
class GeneralMessageRequest with _$GeneralMessageRequest {
  const factory GeneralMessageRequest({
    String? createdAt,
    required int consultationId,
    required int userId,
    required String message,
    required bool isAdmin,
  }) = _GeneralMessageRequest;

  factory GeneralMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$GeneralMessageRequestFromJson(json);
}
