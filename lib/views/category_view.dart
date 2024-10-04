import 'package:flutter/material.dart';
import 'package:news/widget/News_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          NewsListViewBuilder(
            category: category,
          )
        ],
      ),
    );
  }
}
