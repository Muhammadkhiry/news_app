import 'package:flutter/material.dart';
import 'package:news_app/components/news_builder.dart';
import 'package:news_app/models/news_model.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  final NewsModel model = const NewsModel(
    picPath: 'assets/business.avif',
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
              return NewsBuilder(model: model,);
            }),
          );
  }
}
