import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mobile_griya_gede_mundeh/config/dio_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/end_points.dart';
import 'package:mobile_griya_gede_mundeh/data/models/article/response/article.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/article/article_repository.dart';

class ArticleRepository extends IArticleRepository {
  //GET ALL ARTICLE by limit data
  @override
  Future<ApiBaseResponse<List<Article?>?>> getArticles(
      {required ListDataParams listDataParams}) async {
    try {
      final response = await api.get(
        ApiEndPoints.article,
        queryParameters: listDataParams.toJson(),
      );

      final responseData = response.data as Map<String, dynamic>;
      log(response.data.toString(), name: "ARTICLE Response");

      List<Article> listData = [];

      for (var element in responseData['data']) {
        listData.add(Article.fromJson(element));
      }

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: listData,
      );
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiBaseResponse.fromJson(e.response!.data);
      }
      throw ApiBaseResponse(
          status: 500,
          message: [e.message ?? 'Unknown Error Occured'],
          data: null);
    }
  }

  @override
  Future<ApiBaseResponse<Article?>> getArticle({required int id}) async {
    try {
      final respone = await api.get('${ApiEndPoints.article}/$id');

      final responseData = respone.data as Map<String, dynamic>;

      return ApiBaseResponse(
        status: responseData['status'],
        message: responseData['message'],
        data: Article.fromJson(responseData['data']),
      );
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiBaseResponse.fromJson(e.response!.data);
      }
      throw ApiBaseResponse(
          status: 500,
          message: [e.message ?? 'Unkown Error Occured'],
          data: null);
    }
  }
}
