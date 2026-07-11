import 'package:flutter/material.dart';
import 'package:news_app/components/news_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category, required this.title});
  final String category, title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff2F2F2F),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "News",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xffD4BC98),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: CustomScrollView(slivers: [NewsViewBuilder(category: category)]),
      ),
    );
  }
}
