import 'package:flutter/material.dart';

import '../feedback/feedback_screen.dart';
import 'individu_feedback_button.dart';

class FeedbackBar extends StatelessWidget {
  const FeedbackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.white
      ),
      height: 80,
      padding: const EdgeInsets.all(16),
      child:  SizedBox(
                // width: getProportionateScreenWidth(190),
                child: IndividuFeedbackBtn(
                  press: () => Navigator.pushNamed(
                        context, FeedbackScreen.routeName),
                  text: "Feedback",
                )),
    );
  }
}