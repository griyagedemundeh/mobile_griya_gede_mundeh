import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';

final options = BaseOptions(
  baseUrl: ApiEndPoints.BASE_URL,
  connectTimeout: const Duration(seconds: 5),
  receiveTimeout: const Duration(seconds: 3),
  contentType: Headers.jsonContentType,
);

final api = Dio(options);
