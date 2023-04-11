import 'package:flutter/material.dart';

import '../components/custome_appbar.dart';
import 'components/body.dart';

class FeedbackScreen extends StatelessWidget {
  static String routeName = "/feedback";
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "",
        leading: Text("Feedback", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white) ),
      ),
      body: Body(),
    );
  }
}