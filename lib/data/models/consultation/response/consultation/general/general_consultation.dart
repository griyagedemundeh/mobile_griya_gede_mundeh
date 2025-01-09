import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_consultation.freezed.dart';
part 'general_consultation.g.dart';

@freezed
class GeneralConsultation with _$GeneralConsultation {
  const factory GeneralConsultation({
    required int id,
    required String createdAt,
    String? updatedAt,
    required bool isRead,
    required int consultationId,
    required int userId,
    required String userName,
    String? userPhoto,
  }) = _GeneralConsultation;

  factory GeneralConsultation.fromJson(Map<String, dynamic> json) =>
      _$GeneralConsultationFromJson(json);
}
