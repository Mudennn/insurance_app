import 'package:flutter/material.dart';
import 'package:insurance_app/components/feedback_bar.dart';

import '../../components/search_bar.dart';
import '../../constant.dart';
import '../../feedback/feedback_screen.dart';
import '../../models/list_question.dart';
import '../../models/question.dart';
import '../../responsive.dart';
import '../../size_config.dart';
import 'desktop_list_qustion_card.dart';

// Page untuk view list question
class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key, required this.question});
  final Question question;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(flex: 2, child: Container()),
          SizedBox(
            width: 600,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                          question.mainTitle,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: headingColor),
                        ),
                    
                    const SearchBar(),
                    ...List.generate(
                        listQuestion.length,
                        (index) => DesktopListQuestionCard(
                            listQuestion: listQuestion[index])),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: buttonColor),
                        onPressed: () => Navigator.pushNamed(
                            context, FeedbackScreen.routeName),
                        child: Text(
                          "Feedback",
                          style: TextStyle(
                              fontSize: !Responsive.isDesktop(context)
                                  ? getProportionateScreenWidth(18)
                                  : getProportionateScreenWidth(4),
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(flex: 2, child: Container()),
        ],
      ),
    );
  }
}
