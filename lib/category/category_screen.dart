import 'package:flutter/material.dart';

import '../components/custome_appbar.dart';
import '../components/desktop_appbar.dart';
import '../responsive.dart';
import 'components/body.dart';

class CategoryScreen extends StatelessWidget {
  static String routeName = "/category";
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: CustomAppBar(
      //   title: "",
      //   leading: Text(
      //     "Category",
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
                  "Category",
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
