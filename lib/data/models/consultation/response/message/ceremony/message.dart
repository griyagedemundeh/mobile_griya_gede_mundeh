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
    int? ceremonyServiceId,
    int? ceremonyPackageId,
    int? addressId,
    String? invoiceId,
    String? messageType,
    required bool isAdmin,
    required String message,
    String? title,
    String? totalPrice,
    String? ceremonyDate,
    String? address,
    String? paymentUrl,
    DateTime? createdAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
