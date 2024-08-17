import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/views/webPage_view.dart';

class NewsTileWidgt extends StatelessWidget {
  const NewsTileWidgt({
    super.key,
    required this.articlesModel,
  });
  final ArticlesModel articlesModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            articlesModel.image ??
                'https://familytherapytrainingnetwork.org/wp-content/uploads/2018/02/news-2.jpg',
            height: 300,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return WebPageView(articlesModel: articlesModel);
            }));
          },
          child: Text(
            articlesModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articlesModel.subTitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
