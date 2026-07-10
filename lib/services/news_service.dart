import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  NewsService({required this.dio});

  final Dio dio;

  Future<List<ArticleModel>> getArticles() async {
    final String apiKey = "5812fc69fd634f9e9ab133c254228f23";
    final String baseURL = "https://newsapi.org/v2";
    Response response = await dio.get(
      "$baseURL/top-headlines?country=us&apiKey=$apiKey",
    );
    Map<String, dynamic> jsonBody = response.data;

    List<dynamic> jsonData = jsonBody["articles"];

    List<ArticleModel> articles = jsonData
        .map((article) => ArticleModel.fromJson(article))
        .toList();

    return articles;
  }
}
