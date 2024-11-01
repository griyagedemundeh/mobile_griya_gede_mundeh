import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message_request.freezed.dart';
part 'message_request.g.dart';

@freezed
class MessageRequest with _$MessageRequest {
  const factory MessageRequest({
    required int consultationId,
    required int userId,
    int? ceremonyServiceId,
    int? ceremonyPackageId,
    int? invoiceId,
    String? messageType,
    required bool isAdmin,
    required String message,
    String? createdAt,
  }) = _MessageRequest;

  factory MessageRequest.fromJson(Map<String, dynamic> json) =>
      _$MessageRequestFromJson(json);
}
