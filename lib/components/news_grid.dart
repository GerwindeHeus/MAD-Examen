import 'package:flutter/material.dart';
import 'package:madexamn/models/news.dart';
import 'package:madexamn/components/news_item.dart';
import 'package:provider/provider.dart';
import 'package:madexamn/providers/news_provider.dart';

class NewsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<NewsProvider>(context);
    final products = productsData.items;
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 50,
      ),
      itemBuilder: (context, i) => NewsItem(
        id: products[i].id,
        title: products[i].title,
        imageUrl: products[i].imageUrl,
        description: products[i].description,
        kern: products[i].kern,
      ),
    );
  }
}
