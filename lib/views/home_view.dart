import 'package:flutter/material.dart';
import 'package:news_app/views/categories_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
              "News",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff2F2F2F),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xffD4BC98),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: CategoriesView(),
    );
  }
}
