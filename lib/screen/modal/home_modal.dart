class NewsModel
{
  late List<Article> articles;
  NewsModel._init({required this.articles});
  factory NewsModel(Map m1)
  {
    return NewsModel._init(articles: (m1['articles'] as List).map((e) => Article(e),).toList());
  }

}

class Article
{
  late String title,author,urlToImage;
  late Source source;

  Article._init({required this.title, required this.author, required this.urlToImage, required this.source});

  factory Article(Map m1)
  {
    return Article._init(title: m1['title'], author: m1['author'] ?? "NULL AUTHOR", urlToImage: m1['urlToImage'] ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrTFrhr_-pYR74jUgOy7IerAoHAX3zPIZZcg&s", source: Source(m1['source']));
  }

}

class Source
{
  late String name;

  Source._init({required this.name});

  factory Source(Map m1)
  {
    return Source._init(name: m1['name']);
  }
}