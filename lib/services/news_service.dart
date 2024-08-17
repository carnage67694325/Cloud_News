import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticlesModel>> getTopHeadLines(
      {required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=f437c6010e8f4f44b1f51fa9c0446ef2&country=us&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticlesModel> articlesList = [];
      for (var article in articles) {
        ArticlesModel articlesModel = ArticlesModel.fromJson(article);
        articlesList.add(articlesModel);
      }
      return articlesList;
    } on Exception catch (e) {
      return [];
      // TODO
    }
  }
}
