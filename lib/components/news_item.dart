import 'package:flutter/material.dart';
import '../pages/news_detail_page.dart';
import 'favorite_button.dart';

class NewsItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String kern;

  const NewsItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.kern,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          footer: GridTileBar(
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.black,
            leading: Favorite(
              isSelected: false,
              selectedColor: Colors.red,
              normalColor: Colors.white,
            ),
            trailing: IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content:
                        Text('Product toegevoegt aan uw opgeslagen items')));
              },
              icon: Icon(Icons.bookmark),
            ),
          ),
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
        ));
  }
}
