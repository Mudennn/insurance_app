import 'package:flutter/material.dart';

import 'constant.dart';
import 'login/login_screen.dart';
import 'routes.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insurance App',
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    );
  }
}