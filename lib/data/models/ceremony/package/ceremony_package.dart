import 'package:freezed_annotation/freezed_annotation.dart';

part 'ceremony_package.freezed.dart';
part 'ceremony_package.g.dart';

@freezed
class CeremonyPackage with _$CeremonyPackage {
  const factory CeremonyPackage({
    required int id,
    required int ceremonyServiceId,
    required String name,
    required String description,
    required int price,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _CeremonyPackage;

  factory CeremonyPackage.fromJson(Map<String, dynamic> json) =>
      _$CeremonyPackageFromJson(json);
}
