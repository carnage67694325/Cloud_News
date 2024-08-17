import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_widget.dart';
import 'package:news_app/widgets/news_tiles_list_builder.dart';

class CategoryVeiw extends StatelessWidget {
  const CategoryVeiw({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          NewsTilesListBuilder(category: category),
        ],
      ),
    ));
  }
}
