import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/storage_key.dart';
import 'package:mobile_griya_gede_mundeh/data/local/storage.dart';
import 'package:mobile_griya_gede_mundeh/data/models/auth/response/auth.dart';

String getToken() {
  final auth = Storage().getData(key: StorageKey.authDB);

  if (auth != null) {
    return Auth.fromJson(jsonDecode(auth)).token;
  }

  return '';
}

final options = BaseOptions(
  baseUrl: ApiEndPoints.BASE_URL,
  connectTimeout: const Duration(seconds: 10),
  contentType: Headers.jsonContentType,
  responseType: ResponseType.json,
  sendTimeout: const Duration(seconds: 10),
  headers: {"Authorization": "Bearer ${getToken()}"},
);

final api = Dio(options)
  ..interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      log(' ----->>> Request Headers: ${options.headers}');
      log(' ----->>> Request: ${options.path}');

      return handler.next(options);
    },
    onResponse: (Response response, ResponseInterceptorHandler handler) {
      log(' ----->>> Response: ${response.data}');
      return handler.next(response);
    },
    onError: (DioException error, ErrorInterceptorHandler handler) {
      if (error.response != null) {
        final responseData = error.response!.data;
        log('---->>> Error: $responseData');

        handler.next(error);
      } else {
        log(' ----->>> Dio Error: ${error.message}');
        handler.next(error); // Let Dio handle non-response-related errors
      }
    },
  ));
