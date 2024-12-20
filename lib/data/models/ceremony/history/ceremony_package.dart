import 'package:freezed_annotation/freezed_annotation.dart';

part 'ceremony_package.freezed.dart';
part 'ceremony_package.g.dart';

@freezed
class CeremonyPackage with _$CeremonyPackage {
  const factory CeremonyPackage({
    required String name,
    required int id,
  }) = _CeremonyPackage;

  factory CeremonyPackage.fromJson(Map<String, dynamic> json) =>
      _$CeremonyPackageFromJson(json);
}
