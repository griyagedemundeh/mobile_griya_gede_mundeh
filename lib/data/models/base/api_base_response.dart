import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';

part 'api_base_response.freezed.dart';
part 'api_base_response.g.dart';

@freezed
class ApiBaseResponse<T> with _$ApiBaseResponse<T> {
  const factory ApiBaseResponse({
    required int status,
    required List<String> message,
    @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson) required T data,
  }) = _ApiBaseResponse<T>;

  factory ApiBaseResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiBaseResponseFromJson(json);
}

// Helper functions to handle generic type T
T _dataFromJson<T>(Object? json) {
  // Check if the json is a Map and if T is the type Auth
  if (json is Map<String, dynamic>) {
    if (T == Auth) {
      return Auth.fromJson(json) as T;
    }
    // You can add more conditions here for other model types if necessary
  }
  return json as T;
}

Object? _dataToJson<T>(T data) {
  // Implement logic to serialize data based on its type
  if (data is Auth) {
    return data.toJson();
  }
  return data;
}
