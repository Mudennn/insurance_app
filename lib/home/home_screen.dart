import 'package:flutter/material.dart';

import '../components/custome_appbar.dart';
import '../constant.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "",
        leading: Text(
          "MILG",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
            
        ),

      ),

      body: Body(),
    );
  }
}
