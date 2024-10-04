import 'package:flutter/material.dart';
import 'package:news/models/artical_model.dart';
import 'package:news/widget/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticalModel> articles;

  NewsListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
          (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: NewsTile(
                articalModel: articles[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
