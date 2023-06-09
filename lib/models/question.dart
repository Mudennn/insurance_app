class Question {
  final String image, title, answer, mainTitle;

  Question({
    required this.image,
    required this.title,
    required this.answer,
    this.mainTitle = "",
  });
}

final List<Question> questionList = [
  Question(
    mainTitle: "First topic",
    image: "assets/images/Mountain1.jpg",
    title: "Question 1",
    answer: "Discover this 3.1-km loop trail near Semenyih, Selangor. Generally considered a moderately challenging route, it takes an average of 1 h 19 min to complete. This is a very popular area for birding, hiking, and running, so you'll likely encounter other people while exploring. The trail is open year-round and is beautiful to visit anytime." 
    ),
  Question(
    mainTitle: "Second topic",
    image: "assets/images/Mountain2.jpg",
    title: "Question 2",
    answer: "Discover this 3.1-km loop trail near Semenyih, Selangor. Generally considered a moderately challenging route, it takes an average of 1 h 19 min to complete. This is a very popular area for birding, hiking, and running, so you'll likely encounter other people while exploring. The trail is open year-round and is beautiful to visit anytime."
  ),
  Question(
    mainTitle: "Third topic",
    image: "assets/images/Mountain3.jpg",
    title: "Question 3",
    answer: "Discover this 3.1-km loop trail near Semenyih, Selangor. Generally considered a moderately challenging route, it takes an average of 1 h 19 min to complete. This is a very popular area for birding, hiking, and running, so you'll likely encounter other people while exploring. The trail is open year-round and is beautiful to visit anytime."
  ),
];