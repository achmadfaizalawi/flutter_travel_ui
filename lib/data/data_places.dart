class Places {
  final String name;
  final String rating;
  final String about;
  final String images;
  final String price;
  List gallery;

  Places({
    required this.name,
    required this.rating,
    required this.about,
    required this.images,
    required this.gallery,
    required this.price,
  });
}

final List<Places> allData = [
  Places(
      name: "Japan",
      rating: "4.7",
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Contrary to popular belief, Lorem Ipsum is not simply random text.",
      images: "assets/images/IMG_1.jpg",
      gallery: [
        "assets/images/IMG_10.jpg",
        "assets/images/IMG_11.jpg",
        "assets/images/IMG_12.jpg",
        "assets/images/IMG_13.jpg"
      ],
      price: "100"),
  Places(
      name: "Himalayas",
      rating: "4.1",
      about:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Contrary to popular belief, Lorem Ipsum is not simply random text.",
      images: "assets/images/IMG_2.jpg",
      gallery: [
        "assets/images/IMG_6.jpg",
        "assets/images/IMG_7.jpg",
        "assets/images/IMG_8.jpg",
        "assets/images/IMG_9.jpg"
      ],
      price: "149"),
];
