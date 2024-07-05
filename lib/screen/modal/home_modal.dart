class NewsModal {
  String status;
  int totalResult;
  List<Articles> articles;

  NewsModal._init(
      {required this.status,
      required this.totalResult,
      required this.articles});

  factory NewsModal(Map json) {
    return NewsModal._init(
        status: json['status'],
        totalResult: json['totalResult'],
        articles: (json['articles'] as List).map((e) => Articles(e)).toList());
  }
}

class Articles {
  Source source;
  String author, title, description, url, urlToImage, publishedAt, content;

  Articles._init(
      {required this.source,
      required this.author,
      required this.content,
      required this.title,
      required this.description,
      required this.publishedAt,
      required this.url,
      required this.urlToImage});

  factory Articles(Map json) {
    return Articles._init(
        source: Source(json['source']),
        author: json['author'] ?? 'public',
        content: json['content'],
        title: json['title'],
        description: json['description'],
        publishedAt: json['publishedAt'],
        url: json['url'],
        urlToImage: json['urlToImage'] ??
            'https://www.shutterstock.com/image-vector/breaking-news-background-world-global-260nw-719766118.jpg');
  }
}

class Source {
  int id;
  String name;

  Source._init({required this.id, required this.name});

  factory Source(Map json) {
    return Source._init(id: json['id'], name: json['name']);
  }
}
