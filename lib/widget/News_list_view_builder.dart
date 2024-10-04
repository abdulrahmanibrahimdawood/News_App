import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/artical_model.dart';
import 'package:news/services/news_service.dart';
import 'package:news/widget/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;

  const NewsListViewBuilder({super.key, required this.category});
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).getNews(Que: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future,
      builder: (context, Snapshot) {
        if (Snapshot.hasData) {
          return NewsListView(
            articles: Snapshot.data!,
          );
        } else if (Snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('oops there was an error , try later'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
