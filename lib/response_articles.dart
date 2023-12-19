class ResponseArticles {
  final List<Article> articles;

  ResponseArticles({
    required this.articles,
  });

  factory ResponseArticles.fromJson(Map<String, dynamic> json) =>
      ResponseArticles(
        articles: List<Article>.from(
            json["articles"].map((x) => Article.fromJson(x))),
      );
}

class Article {
  final String author;
  final String title;
  final String description;
  final String urlToImage;
  final DateTime publishedAt;
  final String content;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        author: json["author"] ?? "No author",
        title: json["title"] ?? "No title",
        description: json["description"] ?? "No description",
        urlToImage: json["urlToImage"] ??
            "https://cdn.vectorstock.com/i/preview-1x/65/30/default-image-icon-missing-picture-page-vector-40546530.jpg",
        publishedAt:
            DateTime.parse(json["publishedAt"] ?? "2023-12-18T04:01:47Z"),
        content: json["content"] ?? "No content",
      );
}
