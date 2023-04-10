import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constant.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: secondaryColor,
    fontFamily: "Poppins",
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: appBarTheme(),
  );
}

TextTheme textTheme() => const TextTheme(
    displayLarge: TextStyle(color: headingColor),
    bodyMedium: TextStyle(color: textColor));

// InputDecorationTheme inputDecorationTheme() {
//   OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
//     borderRadius: BorderRadius.all(Radius.circular(28)),
//     borderSide: BorderSide(color: textColor),
//     gapPadding: 10,
//   );
//   return InputDecorationTheme(
//     // floatingLabelBehavior: FloatingLabelBehavior.always, //sebab tak function
//     contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//     enabledBorder: outlineInputBorder,
//     focusedBorder: outlineInputBorder,
//     border: outlineInputBorder,
//   );
// }

AppBarTheme appBarTheme() {
  return AppBarTheme(
    backgroundColor: buttonColor,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    toolbarTextStyle: const TextTheme(
      titleLarge: TextStyle(color: textColor, fontSize: 18),
    ).bodyMedium,
  );
}
