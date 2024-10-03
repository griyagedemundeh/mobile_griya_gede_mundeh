import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'api_base_response.freezed.dart';
part 'api_base_response.g.dart';

@freezed
class ApiBaseResponse<T> with _$ApiBaseResponse<T> {
  const factory ApiBaseResponse({
    required int status,
    required List<String> message,
    @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson) required T data,
  }) = _ApiBaseResponse<T>;

  factory ApiBaseResponse.fromJson(Map<String, Object?> json) =>
      _$ApiBaseResponseFromJson(json);
}

// Helper functions to handle generic type T
T _dataFromJson<T>(dynamic json) {
  // Custom logic to deserialize based on the type of T
  // You may need to handle specific types here
  return json as T;
}

Object? _dataToJson<T>(T data) {
  // Custom logic to serialize based on the type of T
  // Again, handle specific types if necessary
  return data;
}
