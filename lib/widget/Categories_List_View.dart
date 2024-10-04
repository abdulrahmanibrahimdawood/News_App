import 'package:flutter/material.dart';
import 'package:news/models/Category_model.dart';
import 'package:news/widget/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  List<CategoryModel> categs = const [
    CategoryModel(image: 'assets/business.avif', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Sscience'),
    CategoryModel(image: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/general.avif', categoryName: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: SizedBox(
        height: 110,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: categs.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return CategoryCard(category: categs[index]);
          }),
        ),
      ),
    );
  }
}
