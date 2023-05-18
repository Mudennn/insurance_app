import 'package:flutter/material.dart';

import '../components/custome_appbar.dart';
import '../components/desktop_appbar.dart';
import '../responsive.dart';
import 'components/body.dart';

class AnnouncementScreen extends StatelessWidget {
  static String routeName = "/announcement";
  const AnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: CustomAppBar(
      //   title: "",
      //   leading: Text("Announcement", style: TextStyle(
      //         fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white)),
      // ),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Responsive(
              mobile: CustomAppBar(
                title: "",
                leading: Text("Announcement",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white)),
              ),
              desktop: DesktopAppBar())),
      body: Body(),
    );
  }
}
