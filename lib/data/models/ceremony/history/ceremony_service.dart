import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/history/ceremony_category.dart';

part 'ceremony_service.freezed.dart';
part 'ceremony_service.g.dart';

@freezed
class CeremonyService with _$CeremonyService {
  const factory CeremonyService({
    required int ceremonyCategoryId,
    required String title,
    required int id,
    required CeremonyCategory ceremonyCategory,
  }) = _CeremonyService;

  factory CeremonyService.fromJson(Map<String, dynamic> json) =>
      _$CeremonyServiceFromJson(json);
}
