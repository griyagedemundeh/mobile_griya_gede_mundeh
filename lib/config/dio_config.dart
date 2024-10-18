import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';

// Custom exception class to handle API error messages
class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, {this.statusCode});

  @override
  String toString() => 'ApiException: $message (Status Code: $statusCode)';
}

final options = BaseOptions(
  baseUrl: ApiEndPoints.BASE_URL,
  connectTimeout: const Duration(seconds: 10),
  contentType: Headers.jsonContentType,
  responseType: ResponseType.json,
  sendTimeout: const Duration(seconds: 10),
);

final api = Dio(options)
  ..interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
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
