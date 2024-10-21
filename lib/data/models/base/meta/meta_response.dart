import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_response.freezed.dart';
part 'meta_response.g.dart';

@freezed
class Meta with _$Meta {
  factory Meta({
    required int total,
    required int perPage,
    required int currentPage,
    required int lastPage,
    required int firstPage,
    required String firstPageUrl,
    required String lastPageUrl,
    String? nextPageUrl,
    String? previousPageUrl,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
