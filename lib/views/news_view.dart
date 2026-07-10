import 'package:flutter/material.dart';
import 'package:news_app/components/article_builder.dart';
import 'package:news_app/models/article_model.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  final ArticleModel model = const ArticleModel(
    picPath: 'assets/technology.jpeg',
    title:
        'kjajdgkjadbgkjadsnvmadsnkvjawejkgbvadjkdbvjkdsnjkvkjajdgkjadbgkjadsnvmadsnkvjawejkgbvadjkdbvjkdsnjkvkjajdgkjadbgkjadsnvmadsnkvjawejkgbvadjkdbvjkdsnjkvkjajdgkjadbgkjadsnvmadsnkvjawejkgbvadjkdbvjkdsnjkv',
    supTitle: 'kjajdgkjadbgkjadsnvmadsnkvjawejkgbvadjkdbvjkdsnjkv',
  );

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (
        BuildContext context,
        int index,
      ) {
        return ArticleBuilder(model: model);
      }),
    );
  }
}
