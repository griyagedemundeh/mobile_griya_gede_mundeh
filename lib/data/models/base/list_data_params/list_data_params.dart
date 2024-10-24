import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_data_params.freezed.dart';
part 'list_data_params.g.dart';

@freezed
class ListDataParams with _$ListDataParams {
  factory ListDataParams({
    required int page,
    required int limit,
  }) = _ListDataParams;

  factory ListDataParams.fromJson(Map<String, dynamic> json) =>
      _$ListDataParamsFromJson(json);
}
