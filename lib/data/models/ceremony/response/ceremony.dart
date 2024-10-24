import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/category/response/ceremony_category.dart';
import 'package:mobile_griya_gede_mundeh/data/models/ceremony/documentation/response/ceremony_documentation.dart';

part 'ceremony.freezed.dart';
part 'ceremony.g.dart';

@freezed
class Ceremony with _$Ceremony {
  factory Ceremony({
    required int id,
    required int ceremonyCategoryId,
    required String title,
    required String description,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    required CeremonyCategory? ceremonyCategory,
    required List<CeremonyDocumentation?>? ceremonyDocumentation,
  }) = _Ceremony;

  factory Ceremony.fromJson(Map<String, dynamic> json) =>
      _$CeremonyFromJson(json);
}
