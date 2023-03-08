import 'package:flutter/material.dart';
import 'package:madexamn/components/opgeslagen_item.dart';
import 'package:madexamn/models/news.dart';
import 'package:madexamn/components/news_item.dart';
import 'package:provider/provider.dart';
import 'package:madexamn/providers/news_provider.dart';

class OpgeslagenGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<NewsProvider>(context);
    final products = productsData.items;
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 9 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (context, i) => OpgeslagenItem(
        id: products[i].id,
        title: products[i].title,
        imageUrl: products[i].imageUrl,
        description: products[i].description,
        kern: products[i].kern,
      ),
    );
  }
}
