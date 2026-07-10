class ArticleModel {
  String? picPath, title, supTitle;

  ArticleModel({
    required this.picPath,
    required this.title,
    required this.supTitle,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      picPath: json["urlToImage"],
      title: json["title"],
      supTitle: json["description"],
    );
  }
}
