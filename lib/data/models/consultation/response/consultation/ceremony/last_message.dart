import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_message.freezed.dart';
part 'last_message.g.dart';

@freezed
class LastMessage with _$LastMessage {
  const factory LastMessage({
    required int id,
    required int consultationId,
    required int userId,
    required bool isAdmin,
    required String messageType,
    required String message,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LastMessage;

  factory LastMessage.fromJson(Map<String, dynamic> json) =>
      _$LastMessageFromJson(json);
}
