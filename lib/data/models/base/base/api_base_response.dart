import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:mobile_griya_gede_mundeh/data/models/base/meta/meta_response.dart';

part 'api_base_response.freezed.dart';
part 'api_base_response.g.dart';

@freezed
class ApiBaseResponse<T> with _$ApiBaseResponse<T> {
  const factory ApiBaseResponse({
    required int status,
    required dynamic message,
    // @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson) required T data,
    required dynamic data,
    Meta? meta,
  }) = _ApiBaseResponse<T>;

  factory ApiBaseResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiBaseResponseFromJson(json);
}

// // Helper functions to handle generic type T
// T _dataFromJson<T>(Object? json) {
//   if (json is Map<String, dynamic>) {
//     if (T == Auth) {
//       return Auth.fromJson(json) as T;
//     } else if (T == Meta) {
//       return Meta.fromJson(json) as T;
//     } else if (T == Ceremony) {
//       return Ceremony.fromJson(json) as T;
//     } else if (T == CeremonyCategory) {
//       return CeremonyDocumentation.fromJson(json) as T;
//     } else if (T == CeremonyDocumentation) {
//       return Meta.fromJson(json) as T;
//     }

//     // You can add more conditions here for other model types if necessary
//   }
//   return json as T;
// }

// Object? _dataToJson<T>(T data) {
//   // Implement logic to serialize data based on its type
//   if (data is Auth) {
//     return data.toJson();
//   } else if (data is Meta) {
//     return data.toJson();
//   } else if (data is Ceremony) {
//     return data.toJson();
//   } else if (data is CeremonyCategory) {
//     return data.toJson();
//   } else if (data is CeremonyDocumentation) {
//     return data.toJson();
//   }
//   return null;

//   // return data;
// }
