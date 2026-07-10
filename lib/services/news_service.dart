import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  Future<List<ArticleModel>> getArticles() async {
    final dio = Dio();

    final String baseURL = "https://newsapi.org/v2";
    final String apiKey = "5812fc69fd634f9e9ab133c254228f23";

    try {
      final Response response = await dio.get(
        "$baseURL/top-headlines?category=general&apiKey=$apiKey",
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonBody = response.data;

        List<dynamic> jsonData = jsonBody["articles"];

        List<ArticleModel> articles = jsonData
            .map((article) => ArticleModel.fromJson(article))
            .toList();

        return articles;
      } else {
        throw Exception('Failed to load users');
      }
    } on DioException catch (e) {
      throw Exception('Dio error: ${e.message}');
    }
  }
}
