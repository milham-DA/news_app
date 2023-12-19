import 'package:flutter/material.dart';
import 'package:news_app/response_articles.dart';

class DetailNewsPage extends StatelessWidget {
  final Article article;
  const DetailNewsPage({super.key, required this.article});

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Image.network(
            article.urlToImage,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(article.title),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(article.content),
          ),
        ],
      ),
    );
  }
}
