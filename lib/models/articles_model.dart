class ArticlesModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;
  ArticlesModel(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.url});
  factory ArticlesModel.fromJson(json) {
    return ArticlesModel(
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description'],
        url: json['url']);
  }
}
