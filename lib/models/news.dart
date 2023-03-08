class News {
  final String id;
  final String title;
  final String description;
  final String kern;
  final String imageUrl;
  bool isFavorite;

  News({
    required this.id,
    required this.title,
    required this.description,
    required this.kern,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
