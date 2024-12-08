import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_message.freezed.dart';
part 'general_message.g.dart';

@freezed
class GeneralMessage with _$GeneralMessage {
  const factory GeneralMessage({
    required int id,
    required DateTime createdAt,
    required int consultationId,
    required int userId,
    required String message,
    required bool isAdmin,
  }) = _GeneralMessage;

  factory GeneralMessage.fromJson(Map<String, dynamic> json) =>
      _$GeneralMessageFromJson(json);
}
