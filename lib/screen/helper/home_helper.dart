import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class NewsApiServices {
  static const String apiKey = 'b6b6490f40fc4fc1876e28b6627e320e';
  static String api = 'https://newsapi.org/v2/everything?q=tesla&from=2024-06-28&sortBy=publishedAt&apiKey=b6b6490f40fc4fc1876e28b6627e320e';

  Future<String?> apiCalling() async {
    Uri uri = Uri.parse(api);
    Response response = await http.get(uri);
    if(response.statusCode==200){
      print('-------------------- api called --------------------');
      return response.body;
    }
    return null;
  }
}
