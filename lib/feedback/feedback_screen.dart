import 'package:flutter/material.dart';
import '../components/custome_appbar.dart';
import '../components/desktop_appbar.dart';
import '../responsive.dart';
import 'components/body.dart';
import 'components/desktop_body.dart';

class FeedbackScreen extends StatelessWidget {
  static String routeName = "/feedback";
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(
      //   title: "Feedback",
      //   // leading: Text("Feedback", style: TextStyle(
      //   //       fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white) ),

      // ),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Responsive(
              mobile: CustomAppBar(
                title: "Feedback",
                // leading: Text("Feedback",
                //     style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 22,
                //         color: Colors.white)),
              ),
              desktop: DesktopAppBar())),
      body: !Responsive.isDesktop(context) ? const Body() : const DesktopBody(),
    );
  }
}
