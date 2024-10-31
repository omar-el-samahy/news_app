class News {
  final String? title, image, description, url;

  News(
      {required this.title,
      required this.image,
      required this.description,
      required this.url});
  factory News.fromJSON(json) {
    return News(
        title: json["title"],
        image: json["urlToImage"],
        description: json["description"],
        url: json["url"]);
  }
}
