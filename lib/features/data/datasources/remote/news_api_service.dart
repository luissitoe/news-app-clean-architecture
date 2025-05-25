import 'dart:io';

import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/config/constants/constants.dart';
import 'package:news_app_clean_architecture/features/data/models/article.dart';
import 'package:retrofit/http.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<Response<List<ArticleModel>>> getNewsArticles({
    @Query("apiKey") String ? apiKey,
    @Query("country") String ? country,
    @Query("category") String ? category,
  });

}