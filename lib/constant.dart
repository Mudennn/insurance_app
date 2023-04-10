import 'package:flutter/material.dart';

const mainColor = Color(0xFFbbaee3);
const secondaryColor = Color(0xFFe7e9f7);
const textColor = Color(0xFF7d848d);
const placeholderColor = Color(0xFFf7f7f9);
const headingColor = Color(0xFF1e1f2c);
const buttonColor = Color(0xFF6752de);

const animationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]");
const String emailNullError = "Please Enter Your Email";
const String invalidEmailError = "Please Enter Valid Email";
const String passNullError = "Please Enter Your Password";
const String rePassNullError = "Please Re-enter Your Password";
const String shortPassError = "Password is too short";
const String matchPassError = "Password don't match";
const String nameNullError = "Please Enter your name";
const String phoneNumberNullError = "Please Enter your phone number";
const String addressNullError = "Please Enter your address";