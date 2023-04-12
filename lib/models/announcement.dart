class Announcement {
  final String image, title;

  Announcement({
    required this.image,
    required this.title,
  });
}

final List<Announcement> announcementList = [
  Announcement(
    image: "assets/images/Mountain1.jpg",
    title: "Title 1",
  ),
  Announcement(
    image: "assets/images/Mountain2.jpg",
    title: "Title 2",
  ),
  Announcement(
    image: "assets/images/Mountain3.jpg",
    title: "Title 3",
  ),
];