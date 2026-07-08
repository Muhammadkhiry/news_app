import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({super.key, required this.model});

  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7.0),
      child: Container(
        height: 151,
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
    );
  }
}
