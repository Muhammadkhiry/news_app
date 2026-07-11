import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/components/news_view.dart';

class NewsViewBuilder extends StatefulWidget {
  const NewsViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsViewBuilder> createState() => _NewsViewBuilderState();
}

class _NewsViewBuilderState extends State<NewsViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService().getArticles(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(child: Text("oop, there is an error"));
        } else {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
