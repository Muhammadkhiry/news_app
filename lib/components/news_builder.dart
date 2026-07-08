import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class NewsBuilder extends StatelessWidget {
  const NewsBuilder({super.key, required this.model});

  final NewsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          child: Image.network(model.picPath),
        ),
        Text(
          model.title,
          style: TextStyle(fontSize: 25, color: Colors.black),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text(
          model.supTitle,
          style: TextStyle(fontSize: 15, color: Colors.grey),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
