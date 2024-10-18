import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/api_base_response.dart';

// Custom exception class to handle API error messages
class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, {this.statusCode});

  @override
  String toString() => 'ApiException: $message (Status Code: $statusCode)';
}

final options = BaseOptions(
  baseUrl: "https://ggm-api.gatenzteam.com/api/v1/",
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
      // Check if the error contains a response (e.g., 422 Unprocessable Entity)
      if (error.response != null) {
        final responseData = error.response!.data;
        log(' ----->>> API ERROR: $responseData');

        final err = ApiBaseResponse.fromJson(responseData);

        throw err;
        // try {
        //   // Parse the error response
        //   final Map<String, dynamic> json =
        //       responseData is String ? jsonDecode(responseData) : responseData;

        //   // Handle case where 'message' might be a list
        //   final dynamic messageData = json['message'];
        //   String customMessage;

        //   if (messageData is List) {
        //     // If 'message' is a list, join the messages into a single string
        //     customMessage = messageData.join(' ');
        //   } else {
        //     // If 'message' is a string, use it directly
        //     customMessage = messageData.toString();
        //   }

        //   final int? statusCode = error.response!.statusCode;

        //   // Throw a custom exception with the extracted message and status code
        //   throw ApiException(customMessage, statusCode: statusCode);
        // } catch (e) {
        //   // In case of parsing failure, log and throw a generic error
        //   log(' ----->>> Error parsing API error response: $e');
        //   throw ApiException(
        //       'An unknown error occurred while parsing the error response.');
        // }
      } else {
        // Handle Dio's internal error (e.g., network issues)
        log(' ----->>> Dio Error: ${error.message}');
        handler.next(error); // Let Dio handle non-response-related errors
      }
    },
  ));
