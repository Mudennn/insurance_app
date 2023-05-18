import 'package:flutter/material.dart';
import 'package:insurance_app/components/desktop_appbar.dart';

import '../components/custome_appbar.dart';
import '../responsive.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: CustomAppBar(
      //   title: "",
      //   leading: Text(
      //     "MILG",
      //     style: TextStyle(
      //         fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
      //   ),
      // ),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Responsive(
              mobile: CustomAppBar(
                title: "",
                leading: Text(
                  "MILG",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white),
                ),
              ),
              desktop: DesktopAppBar())),
      body: Body(),
    );
  }
}
