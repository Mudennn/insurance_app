import 'package:flutter/material.dart';

import '../announcement/announcement_screen.dart';
import '../category/category_screen.dart';
import '../constant.dart';
import '../feedback/feedback_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';
import '../responsive.dart';
import 'desktop_appbar.dart';

// Main page adalah sebuah page yang berkait dengan bottom navigation

class MainPage extends StatefulWidget {
  static String routeName = "/main";
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // List pages untuk bottom nav bar
  List pages = const [
    HomeScreen(),
    CategoryScreen(),
    FeedbackScreen(),
    AnnouncementScreen(),
    ProfileScreen(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: Responsive.isDesktop(context) ? PreferredSize(child: DesktopAppBar(), preferredSize: Size(screenSize.width, 100.0)) : null,
      // appBar: Responsive.isDesktop(context) ? const DesktopAppBar() : null,
      body: pages[currentIndex],
      // backgroundColor: Colors.white70,
      bottomNavigationBar: !Responsive.isDesktop(context) ? BottomNavigationBar(
          onTap: onTap, // bind bagi boleh tukar2 page
          currentIndex: currentIndex, // untuk boleh tukar2 page atau tengok current page
          selectedItemColor: buttonColor,
          unselectedItemColor: textColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed, // tak nak bagi dia bergerak gerak dan boleh tukar color background
          backgroundColor: Colors.white,
          unselectedFontSize: 12,
          selectedFontSize: 12,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Category",
              icon: Icon(Icons.category_outlined),
            ),
            BottomNavigationBarItem(
              label: "Feedback",
              icon: Icon(Icons.feedback_outlined),
            ),
            BottomNavigationBarItem(
              label: "Announcement",
              icon: Icon(Icons.phone_android_outlined),
            ),
            
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            ),
          ]) : const SizedBox.shrink(),
    );
  }
}
