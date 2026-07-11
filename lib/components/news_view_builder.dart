import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/news_view.dart';

class NewsViewBuilder extends StatefulWidget {
  const NewsViewBuilder({super.key});

  @override
  State<NewsViewBuilder> createState() => _NewsViewBuilderState();
}

class _NewsViewBuilderState extends State<NewsViewBuilder> {
  bool flag = false;
  List<ArticleModel> articles = [];
  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articles = await NewsService().getArticles();
    flag = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return flag == false
        ? SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: CircularProgressIndicator()),
        )
        : NewsView(articles: articles);
  }
}
