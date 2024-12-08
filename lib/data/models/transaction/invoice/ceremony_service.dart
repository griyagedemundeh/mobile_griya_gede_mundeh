import 'package:freezed_annotation/freezed_annotation.dart';
import 'ceremony_documentation.dart';

part 'ceremony_service.freezed.dart';
part 'ceremony_service.g.dart';

@freezed
class CeremonyService with _$CeremonyService {
  const factory CeremonyService({
    required int id,
    required List<CeremonyDocumentation> ceremonyDocumentation,
  }) = _CeremonyService;

  factory CeremonyService.fromJson(Map<String, dynamic> json) =>
      _$CeremonyServiceFromJson(json);
}
