import 'package:flutter/material.dart';
import '../components/question_appbar.dart';
import '../models/question.dart';
import 'components/body.dart';

// Ada argument, body dan Question appbar
class QuestionScreen extends StatelessWidget {
  static String routeName = "/question";
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final QuestionDetailArgument arguments =
        ModalRoute.of(context)!.settings.arguments as QuestionDetailArgument;
    return Scaffold(
      appBar: QuestionAppBar(
        question: arguments.question,
        rightLeading: const Icon(
          Icons.search_outlined,
          color: Colors.white,
        ),
      ),
      body: Body(question: arguments.question),
    );
  }
}

class QuestionDetailArgument {
  final Question question;

  QuestionDetailArgument({required this.question});
}

