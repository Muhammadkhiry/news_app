import 'package:flutter/material.dart';
import 'package:news_app/components/article_builder.dart';
import 'package:news_app/models/article_model.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        BuildContext context,
        int index,
      ) {
        return ArticleBuilder(model: articles[index]);
      }),
    );
  }
}
