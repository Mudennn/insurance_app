import 'package:flutter/material.dart';
import 'package:insurance_app/size_config.dart';

import '../../components/search_bar.dart';
import '../../models/list_question.dart';
import '../../models/question.dart';
import 'list_question_card.dart';

// Page untuk view list question
class Body extends StatelessWidget {
  const Body({super.key, required this.question});
  final Question question;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBar(),
            ...List.generate(listQuestion.length,
                (index) => ListQuestionCard(listQuestion: listQuestion[index])),
          ],
        ),
      ),
    );
  }
}
