import 'package:freezed_annotation/freezed_annotation.dart';

part 'ceremony_category.freezed.dart';
part 'ceremony_category.g.dart';

@freezed
class CeremonyCategory with _$CeremonyCategory {
  factory CeremonyCategory({
    required int id,
    required String name,
    required String icon,
    required String description,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _CeremonyCategory;

  factory CeremonyCategory.fromJson(Map<String, dynamic> json) =>
      _$CeremonyCategoryFromJson(json);
}
