import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/list_question.dart';

import 'video.dart';

class DesktopListQuestionCard extends StatelessWidget {
  const DesktopListQuestionCard({super.key, required this.listQuestion});

  // data dari model - List Question
  final ListQuestion listQuestion;

  // Card ada - image dan video
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(listQuestion.title),
        childrenPadding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        iconColor: buttonColor,
        collapsedIconColor: textColor,
        collapsedTextColor: textColor,
        textColor: buttonColor,
        children: [
          listQuestion.image != ""
              ? Container( // Image Container
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(listQuestion.image.toString()),
                          fit: BoxFit.cover)),
                )
              : VideoContainer(listQuestion: listQuestion), // Video Container 
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Answer",
            style: TextStyle(
                color: headingColor, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(listQuestion.answer),
        ],
      ),
    );
  }
}
