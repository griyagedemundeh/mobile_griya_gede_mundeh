import 'package:freezed_annotation/freezed_annotation.dart';

part 'ceremony_documentation.freezed.dart';
part 'ceremony_documentation.g.dart';

@freezed
class CeremonyDocumentation with _$CeremonyDocumentation {
  const factory CeremonyDocumentation({
    required int id,
    required int ceremonyServiceId,
    required String photo,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _CeremonyDocumentation;

  factory CeremonyDocumentation.fromJson(Map<String, dynamic> json) =>
      _$CeremonyDocumentationFromJson(json);
}
