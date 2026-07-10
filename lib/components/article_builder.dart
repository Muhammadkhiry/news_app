import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class ArticleBuilder extends StatelessWidget {
  const ArticleBuilder({super.key, required this.model});

  final ArticleModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 21.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: model.picPath == null
                ? Container(
                    color: Colors.black,
                    child: Text(
                      "No image",
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  )
                : Image.network(
                    model.picPath!,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }

                      return const SizedBox(
                        height: 200,
                        child: Center(child: CircularProgressIndicator()),
                      );
                    },
                  ),
          ),
          Text(
            model.title ?? "No title",
            style: TextStyle(fontSize: 25, color: Colors.black),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Text(
            model.supTitle ?? "No description",
            style: TextStyle(fontSize: 15, color: Colors.grey),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
