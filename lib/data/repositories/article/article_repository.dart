import 'package:mobile_griya_gede_mundeh/data/models/base/base/api_base_response.dart';
import 'package:mobile_griya_gede_mundeh/data/models/article/response/article.dart';
import 'package:mobile_griya_gede_mundeh/data/models/base/list_data_params/list_data_params.dart';

abstract class IArticleRepository {
  Future<ApiBaseResponse<List<Article?>?>> getArticles(
      {required ListDataParams listDataParams});

//Detail
  Future<ApiBaseResponse<Article?>> getArticle({
    required int id,
  });
}
