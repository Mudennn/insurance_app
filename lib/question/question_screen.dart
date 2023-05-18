import 'package:flutter/material.dart';
import 'package:insurance_app/components/desktop_appbar.dart';
import '../components/feedback_bar.dart';
import '../components/question_appbar.dart';
import '../models/question.dart';
import '../responsive.dart';
import 'components/mobile_body.dart';
import 'components/desktop_body.dart';

// Ada argument, body dan Question appbar dan button to feedback page
class QuestionScreen extends StatelessWidget {
  static String routeName = "/question";
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final QuestionDetailArgument arguments =
        ModalRoute.of(context)!.settings.arguments as QuestionDetailArgument;
    return Scaffold(
      // appBar: QuestionAppBar(
      //   question: arguments.question,
      //   // rightLeading: const Icon(
      //   //   Icons.search_outlined,
      //   //   color: Colors.white,
      //   // ),
      // ),
      appBar: PreferredSize(preferredSize: const Size.fromHeight(80), child: Responsive(mobile: QuestionAppBar(question: arguments.question), desktop: const DesktopAppBar()),),
      body: !Responsive.isDesktop(context) ? MobileBody(question: arguments.question) : DesktopBody(question: arguments.question),
      
      bottomNavigationBar: !Responsive.isDesktop(context) ? const FeedbackBar() : const SizedBox.shrink(),
    );
  }
}

class QuestionDetailArgument {
  final Question question;

  QuestionDetailArgument({required this.question});
}

