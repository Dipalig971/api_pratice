import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/home_provider.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body:Consumer<NewsProvider>(
        builder: (context, newsProvider, child) {
          if (newsProvider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => ListTile(
                leading: Text(newsProvider.newsModal.articles[index].title.toString(),
                ),
                // title: Text(newsProvider.newsModal.articles[0].author),
              ),
            );
          }
        },
      ),
    );
  }
}
