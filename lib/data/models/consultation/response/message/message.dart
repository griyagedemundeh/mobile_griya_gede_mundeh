import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required int id,
    required int consultationId,
    required int userId,
    required int ceremonyServiceId,
    int? ceremonyPackageId,
    int? invoiceId,
    String? messageType,
    required bool isAdmin,
    required String message,
    DateTime? createdAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
