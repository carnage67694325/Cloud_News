import 'package:flutter/material.dart';
import 'category_widget.dart';
import 'package:news_app/models/category_model.dart';

class CategoriesListVeiwWidget extends StatelessWidget {
  const CategoriesListVeiwWidget({
    super.key,
  });
  final List<CategoryModel> catgories = const [
    CategoryModel(category: 'Business', image: 'assets/business.avif'),
    CategoryModel(category: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoryModel(category: 'General', image: 'assets/general.avif'),
    CategoryModel(category: 'Health', image: 'assets/health.avif'),
    CategoryModel(category: 'Science', image: 'assets/science.avif'),
    CategoryModel(category: 'Sports', image: 'assets/sports.avif'),
    CategoryModel(category: 'Technology', image: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catgories.length,
        itemBuilder: (context, index) {
          return CategoryWidget(category: catgories[index]);
        },
      ),
    );
  }
}
