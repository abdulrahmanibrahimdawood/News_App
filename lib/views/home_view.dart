import 'package:flutter/material.dart';
import 'package:news/widget/Categories_List_View.dart';
import 'package:news/widget/News_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange, fontSize: 24),
            ),
          ],
        ),
      ),
      body: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        SliverToBoxAdapter(
          child: CategoriesListView(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 32,
          ),
        ),
        const NewsListViewBuilder(
          category: 'general',
        ),
      ]),
    );
  }
}
