class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categoriesList = [
  Category(
    title: "All",
    image: "assets/images/genres/all.jpeg",
  ),
  Category(
    title: "Señor",
    image: "assets/images/genres/men.jpeg",
  ),
  Category(
    title: "Señorita",
    image: "assets/images/genres/women1.jpeg",
  ),
  Category(
    title: "Shoes",
    image: "assets/images/genres/shoes.jpeg",
  ),
  Category(
    title: "Bags",
    image: "assets/images/genres/bags.jpeg",
  ),
  Category(
    title: "Watches",
    image: "assets/images/genres/watches.jpeg",
  ),
];
