
import 'package:flutter/material.dart';

import '../constant.dart';
import '../responsive.dart';
import '../size_config.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(fontSize: !Responsive.isDesktop(context) ? getProportionateScreenWidth(14) : getProportionateScreenWidth(6), color: Colors.white),
        ),
      ),
    );
  }
}