import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({super.key, required this.model, required this.category, required this.title});

  final CategoryModel model;
  final String category, title;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: category, title: title,);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 7.0),
        child: Container(
          height: 131,
          width: 201,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(model.picPath),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              model.categoryTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
