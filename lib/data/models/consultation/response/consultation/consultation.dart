import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'consultation.freezed.dart';
part 'consultation.g.dart';

@freezed
class Consultation with _$Consultation {
  const factory Consultation({
    required int id,
    required int consultationId,
    required int userId,
    required int ceremonyServiceId,
    int? ceremonyPackageId,
    String? ceremonyName,
    required String userName,
    required String userPhoto,
    required String status,
    DateTime? createdAt,
  }) = _Consultation;

  factory Consultation.fromJson(Map<String, dynamic> json) =>
      _$ConsultationFromJson(json);
}
