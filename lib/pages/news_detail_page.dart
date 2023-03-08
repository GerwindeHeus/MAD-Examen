import 'package:flutter/material.dart';

import '../components/favorite_button.dart';

class NewsDetailPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final String kern;

  const NewsDetailPage({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.kern,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(imageUrl)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Favorite(
                  isSelected: false,
                  selectedColor: Colors.red,
                  normalColor: Colors.black,
                ),
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                            'Product toegevoegt aan uw opgeslagen items')));
                  },
                  icon: Icon(Icons.bookmark),
                ),
              ],
            ),
            Container(
                child: Image.network(
                    'https://www.wordstream.com/wp-content/uploads/2021/07/banner-ads-examples-aws.jpg')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                kern,
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
