class Categorie {
  final String image, title, category;

  Categorie({
    required this.image,
    required this.title,
    required this.category,
  });
}

final List<Categorie> categorieList = [
  Categorie(
    image: "assets/images/Mountain1.jpg",
    title: "Title 1",
    category: "Category 1",
  ),
  Categorie(
    image: "assets/images/Mountain2.jpg",
    title: "Title 2",
    category: "Category 2",
  ),
  Categorie(
    image: "assets/images/Mountain3.jpg",
    title: "Title 3",
    category: "Category 3",
  ),
  Categorie(
    image: "assets/images/Mountain1.jpg",
    title: "Title 4",
    category: "Category 4",
  ),
  Categorie(
    image: "assets/images/Mountain2.jpg",
    title: "Title 5",
    category: "Category 5",
  ),
];