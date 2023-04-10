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
    title: "Categorie 1",
  ),
  Categorie(
    image: "assets/images/Mountain2.jpg",
    title: "Categorie 2",
  ),
  Categorie(
    image: "assets/images/Mountain3.jpg",
    title: "Categorie 3",
  ),
];