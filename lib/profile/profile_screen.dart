import 'package:flutter/material.dart';

import '../components/custome_appbar.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        leading: Text("Profile", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white)),
              // rightLeading: Icon(Icons.settings_outlined, color: Colors.white,),
        title: "",
      ),
      body: Body(),
    );
  }
}