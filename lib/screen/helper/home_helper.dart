import 'package:http/http.dart' as http;

class NewsApiServices {
  Future<String> apiCalling() async {
    final response = await http.get(Uri.parse(
      'https://newsapi.org/v2/everything?q=tesla&from=2024-06-05&sortBy=publishedAt&apiKey=b6b6490f40fc4fc1876e28b6627e320e',
    ));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load news');
    }
  }
}
