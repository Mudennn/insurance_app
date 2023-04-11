class ListQuestion {
  final String title, answer;
  final String? videoURL;
  final String? image;

  ListQuestion({
    this.image,
    required this.title,
    required this.answer,
    this.videoURL,
  });
}

final List<ListQuestion> listQuestion = [
  ListQuestion(
    image: "",
    videoURL: "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    title: "Question 1",
    answer: "Discover this 3.1-km loop trail near Semenyih, Selangor. Generally considered a moderately challenging route, it takes an average of 1 h 19 min to complete. This is a very popular area for birding, hiking, and running, so you'll likely encounter other people while exploring. The trail is open year-round and is beautiful to visit anytime." 
    ),
  ListQuestion(
    videoURL: "",
    image: "assets/images/Mountain2.jpg",
    title: "Question 2",
    answer: "Discover this 3.1-km loop trail near Semenyih, Selangor. Generally considered a moderately challenging route, it takes an average of 1 h 19 min to complete. This is a very popular area for birding, hiking, and running, so you'll likely encounter other people while exploring. The trail is open year-round and is beautiful to visit anytime."
  ),
  ListQuestion(
    videoURL: "",
    image: "assets/images/Mountain3.jpg",
    title: "Question 3",
    answer: "Discover this 3.1-km loop trail near Semenyih, Selangor. Generally considered a moderately challenging route, it takes an average of 1 h 19 min to complete. This is a very popular area for birding, hiking, and running, so you'll likely encounter other people while exploring. The trail is open year-round and is beautiful to visit anytime."
  ),
];