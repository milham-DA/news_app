import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/response_articles.dart';

class NetClient {
  static Future<List<Article>> fetchArticles() async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=1d44267e17fb48d48b725258e9e8b3a3'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final responseBody = jsonDecode(response.body);
      final responseArticles = ResponseArticles.fromJson(responseBody);
      final listArticle = responseArticles.articles;
      return listArticle;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load articles');
    }
  }
}
