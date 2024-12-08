import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/consultation/response/consultation/ceremony/last_message.dart';

part 'ceremony_consultation_history.freezed.dart';
part 'ceremony_consultation_history.g.dart';

@freezed
class CeremonyConsultationHistory with _$CeremonyConsultationHistory {
  const factory CeremonyConsultationHistory({
    required int id,
    required int memberId,
    required int ceremonyServiceId,
    int? ceremonyServicePackageId,
    required String ceremonyServiceName,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    LastMessage? lastMessage,
  }) = _CeremonyConsultationHistory;

  factory CeremonyConsultationHistory.fromJson(Map<String, dynamic> json) =>
      _$CeremonyConsultationHistoryFromJson(json);
}
