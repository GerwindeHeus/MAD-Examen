import 'package:flutter/material.dart';
import '../pages/news_detail_page.dart';
import 'favorite_button.dart';

class OpgeslagenItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String kern;

  const OpgeslagenItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.kern,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Container(
        color: Colors.grey[400],
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 80,
              height: 80,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NewsDetailPage(
                        title: title,
                        imageUrl: imageUrl,
                        description: description,
                        kern: kern,
                      ),
                    ),
                  );
                },
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(Icons.bookmark),
          ],
        ),
      ),
    );
  }
}
