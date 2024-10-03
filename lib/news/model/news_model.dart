
class NewsModel {
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final DateTime? publishedAt;
  final String? content;


  NewsModel({
  required this.author,
  required this.title,
  required this.description,
  required this.url,
  required this.urlToImage,
  required this.publishedAt,
  required this.content,
  });

  factory NewsModel.fromJosn(Map<String, dynamic>josn){
     return NewsModel(
     author: josn["author"] ?? "unKnown",
     title: josn["title"] ?? "unKnown",
     description: josn["description"] ?? "unKnown",
     url: josn["url"] ?? "unKnown",
     urlToImage: josn["urlToImage"] ?? "unKnown",
     publishedAt: DateTime.parse(josn["publishedAt"] ?? "unKnown"),
     content: josn["content"] ?? "unKnown"
  );
  }
}