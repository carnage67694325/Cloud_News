import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:news_app/models/articles_model.dart';

class NewsTilesListView extends StatelessWidget {
  final List<ArticlesModel> articles;
  const NewsTilesListView({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: NewsTileWidgt(
            articlesModel: articles[index],
          ),
        );
      },
    ));
  }
}
