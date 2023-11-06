class Category {
  final String name;
  final String images;

  Category({required this.name, required this.images});
}

final List<Category> dataCategory = [
  Category(name: "Mountains", images: "assets/images/IMG_3.jpg"),
  Category(name: "Forest", images: "assets/images/IMG_4.jpg"),
  Category(name: "City", images: "assets/images/IMG_5.jpg")
];
