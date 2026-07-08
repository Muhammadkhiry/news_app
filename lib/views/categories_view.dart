import 'package:flutter/material.dart';
import 'package:news_app/components/category_builder.dart';
import 'package:news_app/models/category_model.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(picPath: "assets/general.avif", categoryTitle: "General"),
    CategoryModel(picPath: "assets/business.avif", categoryTitle: "Business"),
    CategoryModel(
      picPath: "assets/entertainment.avif",
      categoryTitle: "Entertainment",
    ),
    CategoryModel(picPath: "assets/health.avif", categoryTitle: "Health"),
    CategoryModel(picPath: "assets/science.avif", categoryTitle: "Science"),
    CategoryModel(picPath: "assets/sports.avif", categoryTitle: "Sports"),
    CategoryModel(
      picPath: "assets/technology.jpeg",
      categoryTitle: "Technology",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 151,
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
    