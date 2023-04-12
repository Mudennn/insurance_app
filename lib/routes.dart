import 'package:flutter/widgets.dart';
import 'package:insurance_app/components/main_page.dart';
import 'package:insurance_app/home/home_screen.dart';
import 'package:insurance_app/profile/profile_screen.dart';
import 'package:insurance_app/question/question_screen.dart';

import 'announcement/announcement_screen.dart';
import 'feedback/feedback_screen.dart';
import 'login/login_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => const LoginScreen(),
  MainPage.routeName: (context) => const MainPage(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  FeedbackScreen.routeName: (context) => const FeedbackScreen(),
  AnnouncementScreen.routeName: (context) => const AnnouncementScreen(),
  QuestionScreen.routeName: (context) => const QuestionScreen(),
};