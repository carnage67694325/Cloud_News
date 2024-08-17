import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view_widget.dart';
import 'package:news_app/widgets/news_tiles_list_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoriesListVeiwWidget()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              NewsTilesListBuilder(
                category: 'general',
              )
            ],
          )),
    );
  }
}
