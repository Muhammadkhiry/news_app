import 'package:flutter/material.dart';
import 'package:news_app/components/category_builder.dart';
import 'package:news_app/models/category_model.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      picPath: "assets/general.avif",
      categoryTitle: "General",
      category: 'general',
    ),
    CategoryModel(
      picPath: "assets/technology.jpeg",
      categoryTitle: "Technology",
      category: 'technology',
    ),
    CategoryModel(
      picPath: "assets/science.avif",
      categoryTitle: "Science",
      category: 'science',
    ),
    CategoryModel(
      picPath: "assets/sports.avif",
      categoryTitle: "Sports",
      category: 'sports',
    ),
    CategoryModel(
      picPath: "assets/health.avif",
      categoryTitle: "Health",
      category: 'health',
    ),
    CategoryModel(
      picPath: "assets/entertainment.avif",
      categoryTitle: "Entertainment",
      category: 'entertainment',
    ),
    CategoryModel(
      picPath: "assets/business.avif",
      categoryTitle: "Business",
      category: 'business',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 131,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryBuilder(model: categories[index]);
          },
        ),
      ),
    );
  }
}


//  SizedBox(
//         height: 131,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: categories.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.only(right: 7.0),
//               child: Stack(
//                 alignment: AlignmentDirectional.center,
//                 children: [
//                   SizedBox(
//                     width: 201,
//                     child: Image.asset(
//                       categories[index].picPath,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   Text(
//                     categories[index].categoryTitle,
//                     style: TextStyle(fontSize: 24, color: Colors.white),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),)
    