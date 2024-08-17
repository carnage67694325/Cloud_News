import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tiles_list_view.dart';

class NewsTilesListBuilder extends StatefulWidget {
  const NewsTilesListBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsTilesListBuilder> createState() => _NewsTilesListBuilderState();
}

class _NewsTilesListBuilderState extends State<NewsTilesListBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getTopHeadLines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTilesListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Text(
                'oops there is a problem',
                style: TextStyle(fontSize: 150),
              ),
            );
          } else {
            return SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                  child: LoadingAnimationWidget.waveDots(
                      color: Colors.black, size: 50)),
            );
          }
        });
    // isDataLoading
    //     ? SliverFillRemaining(
    //         hasScrollBody: false,
    //         child: Center(
    //             child: LoadingAnimationWidget.waveDots(
    //                 color: Colors.black, size: 50)),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsTilesListView(articles: articles)
    //         : SliverFillRemaining(
    //             hasScrollBody: false,
    //             child: Text(
    //               'oops there is a problem',
    //               style: TextStyle(fontSize: 150),
    //             ),
    //           );
  }
}
