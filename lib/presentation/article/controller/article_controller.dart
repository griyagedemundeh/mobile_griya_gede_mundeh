import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/data/models/article/response/article.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';
import 'package:mobile_griya_gede_mundeh/data/repositories/article/article_repository_implementor.dart';

class ArticleController extends ChangeNotifier {
  final ArticleRepository? articleRepository;

  ArticleController({
    this.articleRepository,
  });

//GET ALL ARTICLES
  Future<ApiBaseResponse<List<Article?>?>?> getArticles({
    required ListDataParams listDataParams,
  }) async {
    try {
      final response =
          await articleRepository?.getArticles(listDataParams: listDataParams);

      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiBaseResponse.fromJson(e.response!.data);
      }
      throw ApiBaseResponse(
          status: 500,
          message: [e.message ?? 'Unkown error Occured'],
          data: null);
    }
  }

//GET ARTICLES
  Future<ApiBaseResponse<Article?>?> getArticle({
    required int id,
  }) async {
    try {
      final response = await articleRepository?.getArticle(
        id: id,
      );
      return response;
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
