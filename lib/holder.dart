// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_tile.dart';
// import 'package:news_app/models/articles_model.dart';
// import 'package:loading_animation_widget/loading_animation_widget.dart';

// class NewsTilesListView extends StatefulWidget {
//   const NewsTilesListView({
//     super.key,
//   });

//   @override
//   State<NewsTilesListView> createState() => _NewsTilesListViewState();
// }

// class _NewsTilesListViewState extends State<NewsTilesListView> {
//   List<ArticlesModel> articles = [];
//   bool isDataLoading = true;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getTopHeadLines();
//     isDataLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isDataLoading
//         ? SliverFillRemaining(
//             hasScrollBody: false,
//             child: Center(
//                 child: LoadingAnimationWidget.waveDots(
//                     color: Colors.black, size: 50)),
//           )
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//             childCount: articles.length,
//             (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 15.0),
//                 child: NewsTileWidgt(
//                   articlesModel: articles[index],
//                 ),
//               );
//             },
//           ));
//   }
// }
