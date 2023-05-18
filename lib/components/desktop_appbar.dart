import 'package:flutter/material.dart';
import 'package:insurance_app/announcement/announcement_screen.dart';
import 'package:insurance_app/components/main_page.dart';
import 'package:insurance_app/feedback/feedback_screen.dart';
import 'package:insurance_app/profile/profile_screen.dart';

import '../category/category_screen.dart';
import '../constant.dart';

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: buttonColor),
      child: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 25 / 2.5),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  InkWell(onTap: () => Navigator.pushNamed(context, MainPage.routeName), child: Column(mainAxisSize: MainAxisSize.min ,children: const [ Text("MILG", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),)],), ),
                  // const Text("MILG", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      // InkWell(onTap: () => Navigator.pushNamed(context, MainPage.routeName), child: Column(mainAxisSize: MainAxisSize.min ,children: const [ Text("Home", style: TextStyle(color: Colors.white),)],), ),
                      // const SizedBox(width: 20,),
                      InkWell(onTap: () => Navigator.pushNamed(context, CategoryScreen.routeName), child: Column(mainAxisSize: MainAxisSize.min ,children: const [ Text("Category", style: TextStyle(color: Colors.white),)],), ),
                      const SizedBox(width: 20,),
                      InkWell(onTap: () => Navigator.pushNamed(context, FeedbackScreen.routeName), child: Column(mainAxisSize: MainAxisSize.min ,children: const [ Text("Feedback", style: TextStyle(color: Colors.white),)],), ),
                      const SizedBox(width: 20,),
                      InkWell(onTap: () => Navigator.pushNamed(context, AnnouncementScreen.routeName), child: Column(mainAxisSize: MainAxisSize.min ,children: const [ Text("Announcement", style: TextStyle(color: Colors.white),)],), ),
                      const SizedBox(width: 20,),
                      InkWell(onTap: () => Navigator.pushNamed(context, ProfileScreen.routeName), child: Column(mainAxisSize: MainAxisSize.min ,children: const [ Text("Profile", style: TextStyle(color: Colors.white),)],), ),
                      const SizedBox(width: 20,),                    
                    ],
                  )
                ],
            )
          ],
        ) 
        ,),
      ),
    );
  }
  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        80,
      );
}
