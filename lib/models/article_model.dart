class ArticleModel {
  final String picPath, title, supTitle;

  const ArticleModel({
    required this.picPath,
    required this.title,
    required this.supTitle,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      picPath: json["articles"]["urlToImage"],
      title: json["articles"]["title"],
      supTitle: json["articles"]["description"],
    );
  }
}
