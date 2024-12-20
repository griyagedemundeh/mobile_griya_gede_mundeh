import 'package:freezed_annotation/freezed_annotation.dart';

part 'ceremony_category.freezed.dart';
part 'ceremony_category.g.dart';

@freezed
class CeremonyCategory with _$CeremonyCategory {
  const factory CeremonyCategory({
    required String name,
    required int id,
  }) = _CeremonyCategory;

  factory CeremonyCategory.fromJson(Map<String, dynamic> json) =>
      _$CeremonyCategoryFromJson(json);
}
