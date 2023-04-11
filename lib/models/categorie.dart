class Categorie {
  final String image, title;

  Categorie({
    required this.image,
    required this.title,
  });
}

final List<Categorie> categorieList = [
  Categorie(
    image: "assets/images/Mountain1.jpg",
    title: "Title 1",
  ),
  Categorie(
    image: "assets/images/Mountain2.jpg",
    title: "Title 2",
  ),
  Categorie(
    image: "assets/images/Mountain3.jpg",
    title: "Title 3",
  ),
];